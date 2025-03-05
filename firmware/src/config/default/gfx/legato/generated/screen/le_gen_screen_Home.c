#include "gfx/legato/generated/screen/le_gen_screen_Home.h"

// screen member widget declarations
static leWidget* root0;
static leWidget* root1;

leWidget* Home_BackgroundPanel;
leImageWidget* Home_ImageWidgetMCHPLogo;
leImageWidget* Home_ImageWidgetMGSLogo;
leLabelWidget* Home_LabelWidget_0;
leLabelWidget* Home_LabelWidget_1;
leLabelWidget* Home_Labelplay;

static leBool initialized = LE_FALSE;
static leBool showing = LE_FALSE;

leResult screenInit_Home(void)
{
    if(initialized == LE_TRUE)
        return LE_FAILURE;

    initialized = LE_TRUE;

    return LE_SUCCESS;
}

leResult screenShow_Home(void)
{
    if(showing == LE_TRUE)
        return LE_FAILURE;

    // layer 0
    root0 = leWidget_New();
    root0->fn->setSize(root0, LE_DEFAULT_SCREEN_WIDTH, LE_DEFAULT_SCREEN_HEIGHT);
    root0->fn->setBackgroundType(root0, LE_WIDGET_BACKGROUND_NONE);
    root0->fn->setMargins(root0, 0, 0, 0, 0);
    root0->flags |= LE_WIDGET_IGNOREEVENTS;
    root0->flags |= LE_WIDGET_IGNOREPICK;

    Home_BackgroundPanel = leWidget_New();
    Home_BackgroundPanel->fn->setPosition(Home_BackgroundPanel, -2, 0);
    Home_BackgroundPanel->fn->setSize(Home_BackgroundPanel, 1280, 800);
    Home_BackgroundPanel->fn->setScheme(Home_BackgroundPanel, &WhiteScheme);
    root0->fn->addChild(root0, (leWidget*)Home_BackgroundPanel);

    Home_ImageWidgetMCHPLogo = leImageWidget_New();
    Home_ImageWidgetMCHPLogo->fn->setPosition(Home_ImageWidgetMCHPLogo, 1058, 16);
    Home_ImageWidgetMCHPLogo->fn->setSize(Home_ImageWidgetMCHPLogo, 206, 48);
    Home_ImageWidgetMCHPLogo->fn->setBackgroundType(Home_ImageWidgetMCHPLogo, LE_WIDGET_BACKGROUND_NONE);
    Home_ImageWidgetMCHPLogo->fn->setBorderType(Home_ImageWidgetMCHPLogo, LE_WIDGET_BORDER_NONE);
    Home_ImageWidgetMCHPLogo->fn->setImage(Home_ImageWidgetMCHPLogo, (leImage*)&mchpBlackLogo);
    root0->fn->addChild(root0, (leWidget*)Home_ImageWidgetMCHPLogo);

    Home_ImageWidgetMGSLogo = leImageWidget_New();
    Home_ImageWidgetMGSLogo->fn->setPosition(Home_ImageWidgetMGSLogo, 16, 717);
    Home_ImageWidgetMGSLogo->fn->setSize(Home_ImageWidgetMGSLogo, 240, 67);
    Home_ImageWidgetMGSLogo->fn->setBackgroundType(Home_ImageWidgetMGSLogo, LE_WIDGET_BACKGROUND_NONE);
    Home_ImageWidgetMGSLogo->fn->setBorderType(Home_ImageWidgetMGSLogo, LE_WIDGET_BORDER_NONE);
    Home_ImageWidgetMGSLogo->fn->setImage(Home_ImageWidgetMGSLogo, (leImage*)&mgsLogo);
    root0->fn->addChild(root0, (leWidget*)Home_ImageWidgetMGSLogo);

    Home_LabelWidget_0 = leLabelWidget_New();
    Home_LabelWidget_0->fn->setPosition(Home_LabelWidget_0, 10, 55);
    Home_LabelWidget_0->fn->setSize(Home_LabelWidget_0, 1071, 50);
    Home_LabelWidget_0->fn->setScheme(Home_LabelWidget_0, &OrangeScheme);
    Home_LabelWidget_0->fn->setBackgroundType(Home_LabelWidget_0, LE_WIDGET_BACKGROUND_NONE);
    Home_LabelWidget_0->fn->setString(Home_LabelWidget_0, (leString*)&string_djpeg);
    root0->fn->addChild(root0, (leWidget*)Home_LabelWidget_0);

    Home_LabelWidget_1 = leLabelWidget_New();
    Home_LabelWidget_1->fn->setPosition(Home_LabelWidget_1, 10, 9);
    Home_LabelWidget_1->fn->setSize(Home_LabelWidget_1, 595, 40);
    Home_LabelWidget_1->fn->setScheme(Home_LabelWidget_1, &BlueScheme);
    Home_LabelWidget_1->fn->setBackgroundType(Home_LabelWidget_1, LE_WIDGET_BACKGROUND_NONE);
    Home_LabelWidget_1->fn->setString(Home_LabelWidget_1, (leString*)&string_demo);
    root0->fn->addChild(root0, (leWidget*)Home_LabelWidget_1);

    Home_Labelplay = leLabelWidget_New();
    Home_Labelplay->fn->setPosition(Home_Labelplay, 290, 706);
    Home_Labelplay->fn->setSize(Home_Labelplay, 949, 91);
    Home_Labelplay->fn->setScheme(Home_Labelplay, &OrangeScheme);
    Home_Labelplay->fn->setBackgroundType(Home_Labelplay, LE_WIDGET_BACKGROUND_NONE);
    Home_Labelplay->fn->setString(Home_Labelplay, (leString*)&string_reading);
    root0->fn->addChild(root0, (leWidget*)Home_Labelplay);

    leAddRootWidget(root0, 0);
    leSetLayerColorMode(0, LE_COLOR_MODE_RGBA_8888);

    // layer 1
    root1 = leWidget_New();
    root1->fn->setSize(root1, 1280, 576);
    root1->fn->setBackgroundType(root1, LE_WIDGET_BACKGROUND_NONE);
    root1->fn->setMargins(root1, 0, 0, 0, 0);
    root1->flags |= LE_WIDGET_IGNOREEVENTS;
    root1->flags |= LE_WIDGET_IGNOREPICK;

    leAddRootWidget(root1, 1);
    leSetLayerColorMode(1, LE_COLOR_MODE_RGBA_8888);

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_Home(void)
{
    root0->fn->setSize(root0, root0->rect.width, root0->rect.height);
    root1->fn->setSize(root1, root1->rect.width, root1->rect.height);
}

void screenHide_Home(void)
{

    leRemoveRootWidget(root0, 0);
    leWidget_Delete(root0);
    root0 = NULL;

    Home_BackgroundPanel = NULL;
    Home_ImageWidgetMCHPLogo = NULL;
    Home_ImageWidgetMGSLogo = NULL;
    Home_LabelWidget_0 = NULL;
    Home_LabelWidget_1 = NULL;
    Home_Labelplay = NULL;

    leRemoveRootWidget(root1, 1);
    leWidget_Delete(root1);
    root1 = NULL;


    showing = LE_FALSE;
}

void screenDestroy_Home(void)
{
    if(initialized == LE_FALSE)
        return;

    initialized = LE_FALSE;
}

leWidget* screenGetRoot_Home(uint32_t lyrIdx)
{
    if(lyrIdx >= LE_LAYER_COUNT)
        return NULL;

    switch(lyrIdx)
    {
        case 0:
        {
            return root0;
        }
        case 1:
        {
            return root1;
        }
        default:
        {
            return NULL;
        }
    }
}

