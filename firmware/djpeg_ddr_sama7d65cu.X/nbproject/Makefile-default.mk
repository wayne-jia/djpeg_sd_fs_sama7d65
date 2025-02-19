#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/bsp/bsp.c ../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/sdmmc/src/drv_sdmmc.c ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/default/gfx/display/ws_touch_display.c ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c ../src/config/default/gfx/driver/gfx_driver.c ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c ../src/config/default/gfx/legato/common/legato_utils.c ../src/config/default/gfx/legato/common/legato_color_blend.c ../src/config/default/gfx/legato/common/legato_color.c ../src/config/default/gfx/legato/common/legato_pixelbuffer.c ../src/config/default/gfx/legato/common/legato_color_lerp.c ../src/config/default/gfx/legato/common/legato_error.c ../src/config/default/gfx/legato/common/legato_math.c ../src/config/default/gfx/legato/common/legato_color_value.c ../src/config/default/gfx/legato/common/legato_color_convert.c ../src/config/default/gfx/legato/common/legato_rect.c ../src/config/default/gfx/legato/core/legato_stream.c ../src/config/default/gfx/legato/core/legato_state.c ../src/config/default/gfx/legato/core/legato_scheme.c ../src/config/default/gfx/legato/core/legato_input.c ../src/config/default/gfx/legato/core/legato_event.c ../src/config/default/gfx/legato/datastructure/legato_rectarray.c ../src/config/default/gfx/legato/datastructure/legato_list.c ../src/config/default/gfx/legato/datastructure/legato_array.c ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c ../src/config/default/gfx/legato/font/legato_font.c ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c ../src/config/default/gfx/legato/generated/image/le_gen_images.c ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c ../src/config/default/gfx/legato/generated/le_gen_scheme.c ../src/config/default/gfx/legato/generated/le_gen_harmony.c ../src/config/default/gfx/legato/generated/le_gen_init.c ../src/config/default/gfx/legato/generated/le_gen_stringtable.c ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c ../src/config/default/gfx/legato/image/jpeg/jidctint.c ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c ../src/config/default/gfx/legato/image/png/lodepng.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c ../src/config/default/gfx/legato/image/legato_image.c ../src/config/default/gfx/legato/image/legato_image_utils.c ../src/config/default/gfx/legato/image/legato_palette.c ../src/config/default/gfx/legato/memory/legato_fixedheap.c ../src/config/default/gfx/legato/memory/legato_memory.c ../src/config/default/gfx/legato/memory/legato_variableheap.c ../src/config/default/gfx/legato/renderer/legato_draw_line.c ../src/config/default/gfx/legato/renderer/legato_gpu.c ../src/config/default/gfx/legato/renderer/legato_draw_arc.c ../src/config/default/gfx/legato/renderer/legato_draw_rect.c ../src/config/default/gfx/legato/renderer/legato_draw.c ../src/config/default/gfx/legato/renderer/legato_renderer.c ../src/config/default/gfx/legato/string/legato_dynamicstring.c ../src/config/default/gfx/legato/string/legato_stringutils.c ../src/config/default/gfx/legato/string/legato_tablestring.c ../src/config/default/gfx/legato/string/legato_string_renderer.c ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c ../src/config/default/gfx/legato/string/legato_string.c ../src/config/default/gfx/legato/string/legato_stringtable.c ../src/config/default/gfx/legato/string/legato_fixedstring.c ../src/config/default/gfx/legato/vector/legato_vector_kernel.c ../src/config/default/gfx/legato/vector/legato_rectf.c ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c ../src/config/default/gfx/legato/core/legato_real_i16.c ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c ../src/config/default/gfx/legato/vector/legato_vector_vline.c ../src/config/default/gfx/legato/vector/legato_point.c ../src/config/default/gfx/legato/vector/legato_vector2.c ../src/config/default/gfx/legato/vector/legato_obb.c ../src/config/default/gfx/legato/vector/legato_plane.c ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c ../src/config/default/gfx/legato/vector/legato_linef.c ../src/config/default/gfx/legato/vector/legato_aabb.c ../src/config/default/gfx/legato/vector/legato_aa.c ../src/config/default/gfx/legato/vector/legato_vector_line.c ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c ../src/config/default/gfx/legato/vector/legato_vector_hline.c ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c ../src/config/default/gfx/legato/core/legato_real_u8.c ../src/config/default/gfx/legato/vector/legato_vector_point.c ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c ../src/config/default/gfx/legato/widget/button/legato_widget_button.c ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c ../src/config/default/gfx/legato/widget/image/legato_widget_image.c ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c ../src/config/default/gfx/legato/widget/label/legato_widget_label.c ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c ../src/config/default/gfx/legato/widget/line/legato_widget_line.c ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c ../src/config/default/gfx/legato/widget/list/legato_widget_list.c ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c ../src/config/default/gfx/legato/widget/window/legato_widget_window.c ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c ../src/config/default/gfx/legato/widget/legato_widget.c ../src/config/default/gfx/legato/widget/legato_editwidget.c ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/dwdt/plib_dwdt.c ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c ../src/config/default/peripheral/gic/plib_gic.c ../src/config/default/peripheral/mmu/plib_mmu.c ../src/config/default/peripheral/pio/plib_pio.c ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/fs/fat_fs/file_system/ff.c ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_fat_interface.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/input/sys_input_listener.c ../src/config/default/system/input/sys_input.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/tasks.c ../src/config/default/cstartup.S ../src/config/default/interrupts.c ../src/config/default/fault_handlers.c ../src/third_party/jpeg-6b/jcomapi.c ../src/third_party/jpeg-6b/jdapimin.c ../src/third_party/jpeg-6b/jdapistd.c ../src/third_party/jpeg-6b/jdatasrc.c ../src/third_party/jpeg-6b/jdcoefct.c ../src/third_party/jpeg-6b/jdcolor.c ../src/third_party/jpeg-6b/jddctmgr.c ../src/third_party/jpeg-6b/jdhuff.c ../src/third_party/jpeg-6b/jdinput.c ../src/third_party/jpeg-6b/jdmainct.c ../src/third_party/jpeg-6b/jdmarker.c ../src/third_party/jpeg-6b/jdmaster.c ../src/third_party/jpeg-6b/jdmerge.c ../src/third_party/jpeg-6b/jdphuff.c ../src/third_party/jpeg-6b/jdpostct.c ../src/third_party/jpeg-6b/jdsample.c ../src/third_party/jpeg-6b/jdtrans.c ../src/third_party/jpeg-6b/jerror.c ../src/third_party/jpeg-6b/jidctflt.c ../src/third_party/jpeg-6b/jidctfst.c ../src/third_party/jpeg-6b/jidctint.c ../src/third_party/jpeg-6b/jidctred.c ../src/third_party/jpeg-6b/jmemmgr.c ../src/third_party/jpeg-6b/jmemnobs.c ../src/third_party/jpeg-6b/jquant1.c ../src/third_party/jpeg-6b/jquant2.c ../src/third_party/jpeg-6b/jutils.c ../src/app.c ../src/main.c ../src/app_screen_help.c ../src/app_screen_home.c ../src/djpeg.c ../src/h3_string.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ${OBJECTDIR}/_ext/1510041067/legato_color.o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ${OBJECTDIR}/_ext/1510041067/legato_error.o ${OBJECTDIR}/_ext/1510041067/legato_math.o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ${OBJECTDIR}/_ext/92283465/legato_stream.o ${OBJECTDIR}/_ext/92283465/legato_state.o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ${OBJECTDIR}/_ext/92283465/legato_input.o ${OBJECTDIR}/_ext/92283465/legato_event.o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ${OBJECTDIR}/_ext/2021927327/legato_list.o ${OBJECTDIR}/_ext/2021927327/legato_array.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ${OBJECTDIR}/_ext/92372729/legato_font.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ${OBJECTDIR}/_ext/1395618758/jidctint.o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ${OBJECTDIR}/_ext/460667659/lodepng.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ${OBJECTDIR}/_ext/1428714511/legato_image.o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ${OBJECTDIR}/_ext/656756333/legato_draw.o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ${OBJECTDIR}/_ext/1047211973/legato_string.o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ${OBJECTDIR}/_ext/975613587/legato_point.o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ${OBJECTDIR}/_ext/975613587/legato_obb.o ${OBJECTDIR}/_ext/975613587/legato_plane.o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ${OBJECTDIR}/_ext/975613587/legato_linef.o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ${OBJECTDIR}/_ext/975613587/legato_aa.o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ${OBJECTDIR}/_ext/943273362/legato_widget.o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ${OBJECTDIR}/_ext/60169263/plib_gic.o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ${OBJECTDIR}/_ext/60177924/plib_pio.o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/411819097/ff.o ${OBJECTDIR}/_ext/411819097/ffunicode.o ${OBJECTDIR}/_ext/565198302/diskio.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ${OBJECTDIR}/_ext/1008098389/sys_input.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/cstartup.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ${OBJECTDIR}/_ext/1854554250/jdinput.o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ${OBJECTDIR}/_ext/1854554250/jdsample.o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ${OBJECTDIR}/_ext/1854554250/jerror.o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ${OBJECTDIR}/_ext/1854554250/jidctint.o ${OBJECTDIR}/_ext/1854554250/jidctred.o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ${OBJECTDIR}/_ext/1854554250/jquant1.o ${OBJECTDIR}/_ext/1854554250/jquant2.o ${OBJECTDIR}/_ext/1854554250/jutils.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ${OBJECTDIR}/_ext/1360937237/djpeg.o ${OBJECTDIR}/_ext/1360937237/h3_string.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d ${OBJECTDIR}/_ext/614491576/plib_dsi.o.d ${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d ${OBJECTDIR}/_ext/1510041067/legato_utils.o.d ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d ${OBJECTDIR}/_ext/1510041067/legato_color.o.d ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d ${OBJECTDIR}/_ext/1510041067/legato_error.o.d ${OBJECTDIR}/_ext/1510041067/legato_math.o.d ${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d ${OBJECTDIR}/_ext/1510041067/legato_rect.o.d ${OBJECTDIR}/_ext/92283465/legato_stream.o.d ${OBJECTDIR}/_ext/92283465/legato_state.o.d ${OBJECTDIR}/_ext/92283465/legato_scheme.o.d ${OBJECTDIR}/_ext/92283465/legato_input.o.d ${OBJECTDIR}/_ext/92283465/legato_event.o.d ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d ${OBJECTDIR}/_ext/2021927327/legato_list.o.d ${OBJECTDIR}/_ext/2021927327/legato_array.o.d ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d ${OBJECTDIR}/_ext/92372729/legato_font.o.d ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d ${OBJECTDIR}/_ext/930643953/le_gen_images.o.d ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d ${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d ${OBJECTDIR}/_ext/1395618758/jidctint.o.d ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d ${OBJECTDIR}/_ext/460667659/lodepng.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d ${OBJECTDIR}/_ext/1428714511/legato_image.o.d ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d ${OBJECTDIR}/_ext/1428714511/legato_palette.o.d ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d ${OBJECTDIR}/_ext/1232982741/legato_memory.o.d ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d ${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d ${OBJECTDIR}/_ext/656756333/legato_gpu.o.d ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d ${OBJECTDIR}/_ext/656756333/legato_draw.o.d ${OBJECTDIR}/_ext/656756333/legato_renderer.o.d ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d ${OBJECTDIR}/_ext/1047211973/legato_string.o.d ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d ${OBJECTDIR}/_ext/975613587/legato_rectf.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d ${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d ${OBJECTDIR}/_ext/975613587/legato_point.o.d ${OBJECTDIR}/_ext/975613587/legato_vector2.o.d ${OBJECTDIR}/_ext/975613587/legato_obb.o.d ${OBJECTDIR}/_ext/975613587/legato_plane.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d ${OBJECTDIR}/_ext/975613587/legato_linef.o.d ${OBJECTDIR}/_ext/975613587/legato_aabb.o.d ${OBJECTDIR}/_ext/975613587/legato_aa.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d ${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d ${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d ${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d ${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d ${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d ${OBJECTDIR}/_ext/943273362/legato_widget.o.d ${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d ${OBJECTDIR}/_ext/60169263/plib_gic.o.d ${OBJECTDIR}/_ext/60175171/plib_mmu.o.d ${OBJECTDIR}/_ext/60177924/plib_pio.o.d ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d ${OBJECTDIR}/_ext/411819097/ff.o.d ${OBJECTDIR}/_ext/411819097/ffunicode.o.d ${OBJECTDIR}/_ext/565198302/diskio.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d ${OBJECTDIR}/_ext/1008098389/sys_input.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1171490990/cstartup.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d ${OBJECTDIR}/_ext/1854554250/jcomapi.o.d ${OBJECTDIR}/_ext/1854554250/jdapimin.o.d ${OBJECTDIR}/_ext/1854554250/jdapistd.o.d ${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d ${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d ${OBJECTDIR}/_ext/1854554250/jdcolor.o.d ${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d ${OBJECTDIR}/_ext/1854554250/jdhuff.o.d ${OBJECTDIR}/_ext/1854554250/jdinput.o.d ${OBJECTDIR}/_ext/1854554250/jdmainct.o.d ${OBJECTDIR}/_ext/1854554250/jdmarker.o.d ${OBJECTDIR}/_ext/1854554250/jdmaster.o.d ${OBJECTDIR}/_ext/1854554250/jdmerge.o.d ${OBJECTDIR}/_ext/1854554250/jdphuff.o.d ${OBJECTDIR}/_ext/1854554250/jdpostct.o.d ${OBJECTDIR}/_ext/1854554250/jdsample.o.d ${OBJECTDIR}/_ext/1854554250/jdtrans.o.d ${OBJECTDIR}/_ext/1854554250/jerror.o.d ${OBJECTDIR}/_ext/1854554250/jidctflt.o.d ${OBJECTDIR}/_ext/1854554250/jidctfst.o.d ${OBJECTDIR}/_ext/1854554250/jidctint.o.d ${OBJECTDIR}/_ext/1854554250/jidctred.o.d ${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d ${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d ${OBJECTDIR}/_ext/1854554250/jquant1.o.d ${OBJECTDIR}/_ext/1854554250/jquant2.o.d ${OBJECTDIR}/_ext/1854554250/jutils.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d ${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d ${OBJECTDIR}/_ext/1360937237/djpeg.o.d ${OBJECTDIR}/_ext/1360937237/h3_string.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ${OBJECTDIR}/_ext/1510041067/legato_color.o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ${OBJECTDIR}/_ext/1510041067/legato_error.o ${OBJECTDIR}/_ext/1510041067/legato_math.o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ${OBJECTDIR}/_ext/92283465/legato_stream.o ${OBJECTDIR}/_ext/92283465/legato_state.o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ${OBJECTDIR}/_ext/92283465/legato_input.o ${OBJECTDIR}/_ext/92283465/legato_event.o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ${OBJECTDIR}/_ext/2021927327/legato_list.o ${OBJECTDIR}/_ext/2021927327/legato_array.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ${OBJECTDIR}/_ext/92372729/legato_font.o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ${OBJECTDIR}/_ext/1395618758/jidctint.o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ${OBJECTDIR}/_ext/460667659/lodepng.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ${OBJECTDIR}/_ext/1428714511/legato_image.o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ${OBJECTDIR}/_ext/656756333/legato_draw.o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ${OBJECTDIR}/_ext/1047211973/legato_string.o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ${OBJECTDIR}/_ext/975613587/legato_point.o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ${OBJECTDIR}/_ext/975613587/legato_obb.o ${OBJECTDIR}/_ext/975613587/legato_plane.o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ${OBJECTDIR}/_ext/975613587/legato_linef.o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ${OBJECTDIR}/_ext/975613587/legato_aa.o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ${OBJECTDIR}/_ext/943273362/legato_widget.o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ${OBJECTDIR}/_ext/60169263/plib_gic.o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ${OBJECTDIR}/_ext/60177924/plib_pio.o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/411819097/ff.o ${OBJECTDIR}/_ext/411819097/ffunicode.o ${OBJECTDIR}/_ext/565198302/diskio.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ${OBJECTDIR}/_ext/1008098389/sys_input.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/cstartup.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ${OBJECTDIR}/_ext/1854554250/jdinput.o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ${OBJECTDIR}/_ext/1854554250/jdsample.o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ${OBJECTDIR}/_ext/1854554250/jerror.o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ${OBJECTDIR}/_ext/1854554250/jidctint.o ${OBJECTDIR}/_ext/1854554250/jidctred.o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ${OBJECTDIR}/_ext/1854554250/jquant1.o ${OBJECTDIR}/_ext/1854554250/jquant2.o ${OBJECTDIR}/_ext/1854554250/jutils.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ${OBJECTDIR}/_ext/1360937237/djpeg.o ${OBJECTDIR}/_ext/1360937237/h3_string.o

# Source Files
SOURCEFILES=../src/config/default/bsp/bsp.c ../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/sdmmc/src/drv_sdmmc.c ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c ../src/config/default/gfx/display/ws_touch_display.c ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c ../src/config/default/gfx/driver/gfx_driver.c ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c ../src/config/default/gfx/legato/common/legato_utils.c ../src/config/default/gfx/legato/common/legato_color_blend.c ../src/config/default/gfx/legato/common/legato_color.c ../src/config/default/gfx/legato/common/legato_pixelbuffer.c ../src/config/default/gfx/legato/common/legato_color_lerp.c ../src/config/default/gfx/legato/common/legato_error.c ../src/config/default/gfx/legato/common/legato_math.c ../src/config/default/gfx/legato/common/legato_color_value.c ../src/config/default/gfx/legato/common/legato_color_convert.c ../src/config/default/gfx/legato/common/legato_rect.c ../src/config/default/gfx/legato/core/legato_stream.c ../src/config/default/gfx/legato/core/legato_state.c ../src/config/default/gfx/legato/core/legato_scheme.c ../src/config/default/gfx/legato/core/legato_input.c ../src/config/default/gfx/legato/core/legato_event.c ../src/config/default/gfx/legato/datastructure/legato_rectarray.c ../src/config/default/gfx/legato/datastructure/legato_list.c ../src/config/default/gfx/legato/datastructure/legato_array.c ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c ../src/config/default/gfx/legato/font/legato_font.c ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c ../src/config/default/gfx/legato/generated/image/le_gen_images.c ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c ../src/config/default/gfx/legato/generated/le_gen_scheme.c ../src/config/default/gfx/legato/generated/le_gen_harmony.c ../src/config/default/gfx/legato/generated/le_gen_init.c ../src/config/default/gfx/legato/generated/le_gen_stringtable.c ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c ../src/config/default/gfx/legato/image/jpeg/jidctint.c ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c ../src/config/default/gfx/legato/image/png/lodepng.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c ../src/config/default/gfx/legato/image/legato_image.c ../src/config/default/gfx/legato/image/legato_image_utils.c ../src/config/default/gfx/legato/image/legato_palette.c ../src/config/default/gfx/legato/memory/legato_fixedheap.c ../src/config/default/gfx/legato/memory/legato_memory.c ../src/config/default/gfx/legato/memory/legato_variableheap.c ../src/config/default/gfx/legato/renderer/legato_draw_line.c ../src/config/default/gfx/legato/renderer/legato_gpu.c ../src/config/default/gfx/legato/renderer/legato_draw_arc.c ../src/config/default/gfx/legato/renderer/legato_draw_rect.c ../src/config/default/gfx/legato/renderer/legato_draw.c ../src/config/default/gfx/legato/renderer/legato_renderer.c ../src/config/default/gfx/legato/string/legato_dynamicstring.c ../src/config/default/gfx/legato/string/legato_stringutils.c ../src/config/default/gfx/legato/string/legato_tablestring.c ../src/config/default/gfx/legato/string/legato_string_renderer.c ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c ../src/config/default/gfx/legato/string/legato_string.c ../src/config/default/gfx/legato/string/legato_stringtable.c ../src/config/default/gfx/legato/string/legato_fixedstring.c ../src/config/default/gfx/legato/vector/legato_vector_kernel.c ../src/config/default/gfx/legato/vector/legato_rectf.c ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c ../src/config/default/gfx/legato/core/legato_real_i16.c ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c ../src/config/default/gfx/legato/vector/legato_vector_vline.c ../src/config/default/gfx/legato/vector/legato_point.c ../src/config/default/gfx/legato/vector/legato_vector2.c ../src/config/default/gfx/legato/vector/legato_obb.c ../src/config/default/gfx/legato/vector/legato_plane.c ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c ../src/config/default/gfx/legato/vector/legato_linef.c ../src/config/default/gfx/legato/vector/legato_aabb.c ../src/config/default/gfx/legato/vector/legato_aa.c ../src/config/default/gfx/legato/vector/legato_vector_line.c ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c ../src/config/default/gfx/legato/vector/legato_vector_hline.c ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c ../src/config/default/gfx/legato/core/legato_real_u8.c ../src/config/default/gfx/legato/vector/legato_vector_point.c ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c ../src/config/default/gfx/legato/widget/button/legato_widget_button.c ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c ../src/config/default/gfx/legato/widget/image/legato_widget_image.c ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c ../src/config/default/gfx/legato/widget/label/legato_widget_label.c ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c ../src/config/default/gfx/legato/widget/line/legato_widget_line.c ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c ../src/config/default/gfx/legato/widget/list/legato_widget_list.c ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c ../src/config/default/gfx/legato/widget/window/legato_widget_window.c ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c ../src/config/default/gfx/legato/widget/legato_widget.c ../src/config/default/gfx/legato/widget/legato_editwidget.c ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/dwdt/plib_dwdt.c ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c ../src/config/default/peripheral/gic/plib_gic.c ../src/config/default/peripheral/mmu/plib_mmu.c ../src/config/default/peripheral/pio/plib_pio.c ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c ../src/config/default/peripheral/tc/plib_tc0.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/system/fs/fat_fs/file_system/ff.c ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_fat_interface.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/input/sys_input_listener.c ../src/config/default/system/input/sys_input.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/initialization.c ../src/config/default/tasks.c ../src/config/default/cstartup.S ../src/config/default/interrupts.c ../src/config/default/fault_handlers.c ../src/third_party/jpeg-6b/jcomapi.c ../src/third_party/jpeg-6b/jdapimin.c ../src/third_party/jpeg-6b/jdapistd.c ../src/third_party/jpeg-6b/jdatasrc.c ../src/third_party/jpeg-6b/jdcoefct.c ../src/third_party/jpeg-6b/jdcolor.c ../src/third_party/jpeg-6b/jddctmgr.c ../src/third_party/jpeg-6b/jdhuff.c ../src/third_party/jpeg-6b/jdinput.c ../src/third_party/jpeg-6b/jdmainct.c ../src/third_party/jpeg-6b/jdmarker.c ../src/third_party/jpeg-6b/jdmaster.c ../src/third_party/jpeg-6b/jdmerge.c ../src/third_party/jpeg-6b/jdphuff.c ../src/third_party/jpeg-6b/jdpostct.c ../src/third_party/jpeg-6b/jdsample.c ../src/third_party/jpeg-6b/jdtrans.c ../src/third_party/jpeg-6b/jerror.c ../src/third_party/jpeg-6b/jidctflt.c ../src/third_party/jpeg-6b/jidctfst.c ../src/third_party/jpeg-6b/jidctint.c ../src/third_party/jpeg-6b/jidctred.c ../src/third_party/jpeg-6b/jmemmgr.c ../src/third_party/jpeg-6b/jmemnobs.c ../src/third_party/jpeg-6b/jquant1.c ../src/third_party/jpeg-6b/jquant2.c ../src/third_party/jpeg-6b/jutils.c ../src/app.c ../src/main.c ../src/app_screen_help.c ../src/app_screen_home.c ../src/djpeg.c ../src/h3_string.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=SAMA7D65
ProjectDir="C:\Work\H3\a7d65\ws\jpeg1280x720\sd\sdmmc_fat\djpeg_ddr_sama7d65cu.X"
ProjectName=djpeg_ddr_sama7d65cu
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}/xc32-objcopy -O binary ${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf ${DISTDIR}/harmony.bin]"
	@${MP_CC_DIR}/xc32-objcopy -O binary ${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.elf ${DISTDIR}/harmony.bin
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=SAMA7D65
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ddr.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1171490990/cstartup.o: ../src/config/default/cstartup.S  .generated_files/flags/default/fb9c68e9f96b996ef0bef99347ac8cada2c482d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.ok ${OBJECTDIR}/_ext/1171490990/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1171490990/cstartup.o ../src/config/default/cstartup.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/cstartup.o.d" "${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1171490990/cstartup.o: ../src/config/default/cstartup.S  .generated_files/flags/default/b71fe93302c857168720af43dfeab27e0107043c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.ok ${OBJECTDIR}/_ext/1171490990/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1171490990/cstartup.o ../src/config/default/cstartup.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/cstartup.o.d" "${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/8d7eea58b5269a54564b7cbae5e1a36ecd100336 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/6b46d965ef9f1bc29a58bcae7c37e3da90a8db59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/default/3ddcb9ff56b7deab2425a3408402234c246b9c83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ../src/config/default/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/default/c4db329dc143a253a81fde4ab176ffa79fc33078 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1992993867/ws_touch_display.o: ../src/config/default/gfx/display/ws_touch_display.c  .generated_files/flags/default/349fcb13786d428bba614f95c970f075811aa451 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1992993867" 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d" -o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ../src/config/default/gfx/display/ws_touch_display.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/614491576/plib_dsi.o: ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c  .generated_files/flags/default/ee1829d138a4f84868545307dab8e5777f6f4ae5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/614491576" 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/614491576/plib_dsi.o.d" -o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1319235455/gfx_driver.o: ../src/config/default/gfx/driver/gfx_driver.c  .generated_files/flags/default/551953672b267615a13822c5803488b02d01448a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1319235455" 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ../src/config/default/gfx/driver/gfx_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c  .generated_files/flags/default/5aab4b79b9cfe4612675056d5f7972a7c8871782 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/119635701" 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d" -o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/412764825/plib_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c  .generated_files/flags/default/f36dd83c934238aff117f786b1d222151cc19535 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/412764825" 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d" -o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_utils.o: ../src/config/default/gfx/legato/common/legato_utils.c  .generated_files/flags/default/b5ac3fb05df70dd0507fd5c0d70cfdfa62f325ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ../src/config/default/gfx/legato/common/legato_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_blend.o: ../src/config/default/gfx/legato/common/legato_color_blend.c  .generated_files/flags/default/ba393dc90d22d3dc812de7ba3270e6dd81e2e7e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ../src/config/default/gfx/legato/common/legato_color_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color.o: ../src/config/default/gfx/legato/common/legato_color.c  .generated_files/flags/default/5c3b56aaab21fa01f70431d1f76c5a46348c9a25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color.o ../src/config/default/gfx/legato/common/legato_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o: ../src/config/default/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/default/6742de188d1d96d0437890822d964945632e4f6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ../src/config/default/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o: ../src/config/default/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/default/affb966ba8b9498b4f63c56dacecae152f041183 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ../src/config/default/gfx/legato/common/legato_color_lerp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_error.o: ../src/config/default/gfx/legato/common/legato_error.c  .generated_files/flags/default/ab49f95279209955c8a541d861b4f97bfb0c52be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_error.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_error.o ../src/config/default/gfx/legato/common/legato_error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_math.o: ../src/config/default/gfx/legato/common/legato_math.c  .generated_files/flags/default/ed7515455fc979ce4fe04086cf70051829ef4a21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_math.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_math.o ../src/config/default/gfx/legato/common/legato_math.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_value.o: ../src/config/default/gfx/legato/common/legato_color_value.c  .generated_files/flags/default/ace2438c36d5132bdd57374c475a320d84723a48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ../src/config/default/gfx/legato/common/legato_color_value.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_convert.o: ../src/config/default/gfx/legato/common/legato_color_convert.c  .generated_files/flags/default/e8fe704148d89e1b69fb7854224ffad860d6b540 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ../src/config/default/gfx/legato/common/legato_color_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_rect.o: ../src/config/default/gfx/legato/common/legato_rect.c  .generated_files/flags/default/4b1971b31ab150c8bd45b2455549610fd52f23eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ../src/config/default/gfx/legato/common/legato_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_stream.o: ../src/config/default/gfx/legato/core/legato_stream.c  .generated_files/flags/default/6f473e74701ae4b6b9e98dc9e6e6ebebc5a25309 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_stream.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_stream.o ../src/config/default/gfx/legato/core/legato_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_state.o: ../src/config/default/gfx/legato/core/legato_state.c  .generated_files/flags/default/f95e2f5e9ecb15347d7fc62d4a1fd958aab9af77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_state.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_state.o ../src/config/default/gfx/legato/core/legato_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_scheme.o: ../src/config/default/gfx/legato/core/legato_scheme.c  .generated_files/flags/default/9862590974d479ffd1d50f0b7518790282985e9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ../src/config/default/gfx/legato/core/legato_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_input.o: ../src/config/default/gfx/legato/core/legato_input.c  .generated_files/flags/default/83a15d1dd589215e94bc6e03ea6d729ecec6796d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_input.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_input.o ../src/config/default/gfx/legato/core/legato_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_event.o: ../src/config/default/gfx/legato/core/legato_event.c  .generated_files/flags/default/7e03b70acfec5fb4a9d36b3a793fe40df27768be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_event.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_event.o ../src/config/default/gfx/legato/core/legato_event.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_rectarray.o: ../src/config/default/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/default/bb2e9f0cd9c18b29e4c2e1d842d207e21363ab06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ../src/config/default/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_list.o: ../src/config/default/gfx/legato/datastructure/legato_list.c  .generated_files/flags/default/8829fbbf0054414d86656d4db08a1716909070d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_list.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_list.o ../src/config/default/gfx/legato/datastructure/legato_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_array.o: ../src/config/default/gfx/legato/datastructure/legato_array.c  .generated_files/flags/default/ccc65094ef2bf51353da4a1b16dfd728361fa790 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_array.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_array.o ../src/config/default/gfx/legato/datastructure/legato_array.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/default/c97b2ea3ffaa9e32c1c324cfa585248e88d3a48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/default/127a12e3a9e66c481186e6ce02660addc7e164b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_font.o: ../src/config/default/gfx/legato/font/legato_font.c  .generated_files/flags/default/7c4fd2b088072503f1c2dee9a7241b656e8bb032 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_font.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_font.o ../src/config/default/gfx/legato/font/legato_font.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o: ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/default/7aa4559d51a4a16144642ca3a6c8cd747864c152 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o: ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/default/7978f49c0da36df6b53d494aeb6a2eb21a5175e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1494086919" 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/930643953/le_gen_images.o: ../src/config/default/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/default/ba4ff3faddb12eaffc829ea0f10e9d645f2917bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/930643953" 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/930643953/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ../src/config/default/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c  .generated_files/flags/default/17570508cd8f3254942136bd32a1cfeae53ce596 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c  .generated_files/flags/default/2eac76709cf39c1e6e4a63979e1ed3e3bed9bb2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o: ../src/config/default/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/default/dab158c3adc0cd4e7e55545bd37d0143e7c5530b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ../src/config/default/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o: ../src/config/default/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/default/367122869761c96a0749139331beb61ff13c1c6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ../src/config/default/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_init.o: ../src/config/default/gfx/legato/generated/le_gen_init.c  .generated_files/flags/default/42027e3b3af46b1dc6d701ee72fb547ee22b8bed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ../src/config/default/gfx/legato/generated/le_gen_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o: ../src/config/default/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/default/7b8a326133834a22231533f8af91915c234b31c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ../src/config/default/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o: ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/default/c96b2bf302fed2f802b2c4a368cdf207acbb3081 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/default/c76be8232232aa38c4f76c1a0e252b36e75b82d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/jidctint.o: ../src/config/default/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/default/2ebd6450f5316d87ae5964636211e562a27c2798 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/jidctint.o.d" -o ${OBJECTDIR}/_ext/1395618758/jidctint.o ../src/config/default/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/default/e865d41b6faaf4f7600298d89eaae2f28738ec36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/default/61be46c70781888a4a7a56429f82b1a0e8c7ed11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/default/45c15531c0fb1a126aa9072544fbf42aa8ef5ae6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/default/a5b42f5b345b1bd57eccccf660a0bc4a9368e388 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o: ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/default/c45ace59d972f7b976b9f08ca2dfb789288ff6c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/lodepng.o: ../src/config/default/gfx/legato/image/png/lodepng.c  .generated_files/flags/default/3b4177111ab98ea409ed453c3a0097a2a6ee8329 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/lodepng.o.d" -o ${OBJECTDIR}/_ext/460667659/lodepng.o ../src/config/default/gfx/legato/image/png/lodepng.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/default/84938dc135606c0a4e608d70d1954aa0b64ded60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/default/d0316f0e4e323212f5496b2363af204f903782f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/default/b90e3b63b9dbff72d7bff30a2255d08303c139f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/default/f77a423d470dfd0160b6a9ee8164dea8767f3ca7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/default/18902b084184a321f4d260f3f232f7de81a324a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/default/417a0f07caa88f0dcfdb2ef3fee7795131d108bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/default/512f4a1c72e399449f28d1acad971bb3956b9b86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/default/8268db1073641558ead12833f72fdf573db79442 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/default/64d23bcd82a51a3e944ecdb1e5113c818114fa7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/default/f336d6b597be917659a74cdf6997705f38c1463 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/default/c517ec85963f733af3b37dad7a7d2c04597a8e03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/default/16577a575291f853424649019580927c5c39ba7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/default/61f0d909dbf5be195733546b9ec38aca4e583a0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/default/44d8021252a97a83e18d78bb2cfd4a53f4cac94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/default/49610c5f46c834017494602cb2cf0659847d977e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image.o: ../src/config/default/gfx/legato/image/legato_image.c  .generated_files/flags/default/9307c6c3e8d2346f64516e0ee5acacdb03ac1527 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image.o ../src/config/default/gfx/legato/image/legato_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image_utils.o: ../src/config/default/gfx/legato/image/legato_image_utils.c  .generated_files/flags/default/e2526fec6183551365a83413ee9f8454680f779d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ../src/config/default/gfx/legato/image/legato_image_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_palette.o: ../src/config/default/gfx/legato/image/legato_palette.c  .generated_files/flags/default/4e6dfa7f1c806f407e77a3d684656936e95482aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_palette.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ../src/config/default/gfx/legato/image/legato_palette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o: ../src/config/default/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/default/857a57d47154d50b3b8b365e27751b23f3c5ab2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ../src/config/default/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_memory.o: ../src/config/default/gfx/legato/memory/legato_memory.c  .generated_files/flags/default/1a376396448c9b85f9511630ecc09c6c9d5fa549 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_memory.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ../src/config/default/gfx/legato/memory/legato_memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_variableheap.o: ../src/config/default/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/default/245a7b76fdf6e81551073147ef44714eb6f985a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ../src/config/default/gfx/legato/memory/legato_variableheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_line.o: ../src/config/default/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/default/15d9b996c11a42fc339bccc6958cae90479f6f9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ../src/config/default/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_gpu.o: ../src/config/default/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/default/7b39bea32d77b5e7f0f2d22690fbdc58a46e13f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ../src/config/default/gfx/legato/renderer/legato_gpu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_arc.o: ../src/config/default/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/default/88af7cf2776399f793e095ebbe10f482076c9573 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ../src/config/default/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_rect.o: ../src/config/default/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/default/9ca8cea331ede3159c273204504aae16ede05395 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ../src/config/default/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw.o: ../src/config/default/gfx/legato/renderer/legato_draw.c  .generated_files/flags/default/1275218008668754bd7a34be20129e978cffb6b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw.o ../src/config/default/gfx/legato/renderer/legato_draw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_renderer.o: ../src/config/default/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/default/6f2f1f4ba30c4b874c8b05e1e08507cda3f5a6ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ../src/config/default/gfx/legato/renderer/legato_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o: ../src/config/default/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/default/986558f5a91fc787051f0da64189b0fd2733959d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ../src/config/default/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringutils.o: ../src/config/default/gfx/legato/string/legato_stringutils.c  .generated_files/flags/default/79224459145a566b423fdbdf55b0dbfe41c06fc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ../src/config/default/gfx/legato/string/legato_stringutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_tablestring.o: ../src/config/default/gfx/legato/string/legato_tablestring.c  .generated_files/flags/default/7aee8e8055d5ee55b101cebaadbcb90c620a0357 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ../src/config/default/gfx/legato/string/legato_tablestring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o: ../src/config/default/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/default/750892e87b20ab0d200c7282a4ebc904488dee7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ../src/config/default/gfx/legato/string/legato_string_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o: ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/default/d6ad22a9eae964998dd9ddf79007d01082829978 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string.o: ../src/config/default/gfx/legato/string/legato_string.c  .generated_files/flags/default/11d3b4fb1fc8fe17c47dc0a00c8c1bf0ed86e944 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string.o ../src/config/default/gfx/legato/string/legato_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringtable.o: ../src/config/default/gfx/legato/string/legato_stringtable.c  .generated_files/flags/default/9c3da7027133e2f0006385c54100dbf4c9d50331 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ../src/config/default/gfx/legato/string/legato_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o: ../src/config/default/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/default/b5278caf2c82a49b47dea2af38da50daa2e9b62a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ../src/config/default/gfx/legato/string/legato_fixedstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o: ../src/config/default/gfx/legato/vector/legato_vector_kernel.c  .generated_files/flags/default/6b912b22824fb531b1051bc5cc6092f49bde4750 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ../src/config/default/gfx/legato/vector/legato_vector_kernel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_rectf.o: ../src/config/default/gfx/legato/vector/legato_rectf.c  .generated_files/flags/default/f7c574ad97e6c3f7ad282e09f7bfad2f3794660 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_rectf.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ../src/config/default/gfx/legato/vector/legato_rectf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c  .generated_files/flags/default/3966ae8583e32af793121a98d6db8515f09e8bf7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_i16.o: ../src/config/default/gfx/legato/core/legato_real_i16.c  .generated_files/flags/default/8c613baa281a46d95316d5706f7a46aba717de87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ../src/config/default/gfx/legato/core/legato_real_i16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c  .generated_files/flags/default/c4998ed8072ea8f731f4e7fb6f2656982fe98984 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_vline.o: ../src/config/default/gfx/legato/vector/legato_vector_vline.c  .generated_files/flags/default/e767414085e96996dc07d9d697f73e9f3c4c0eb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ../src/config/default/gfx/legato/vector/legato_vector_vline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_point.o: ../src/config/default/gfx/legato/vector/legato_point.c  .generated_files/flags/default/69cec7e2e7a43bccc2db1e3f9a9f505c0b8125ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_point.o ../src/config/default/gfx/legato/vector/legato_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector2.o: ../src/config/default/gfx/legato/vector/legato_vector2.c  .generated_files/flags/default/c0b3522560a9e326a4624272069f3141173f6777 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector2.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ../src/config/default/gfx/legato/vector/legato_vector2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_obb.o: ../src/config/default/gfx/legato/vector/legato_obb.c  .generated_files/flags/default/ecd602f8a4a7c31e495a343f6063621aebf25ffa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_obb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_obb.o ../src/config/default/gfx/legato/vector/legato_obb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_plane.o: ../src/config/default/gfx/legato/vector/legato_plane.c  .generated_files/flags/default/81c182d193f849825865dda0f8ff77c474a1c24b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_plane.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_plane.o ../src/config/default/gfx/legato/vector/legato_plane.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c  .generated_files/flags/default/9b39fde9284812258d53dc482cebd52ede713034 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_linef.o: ../src/config/default/gfx/legato/vector/legato_linef.c  .generated_files/flags/default/b609313d2717b1b8f9d3003b3f8d7a0ec6858582 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_linef.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_linef.o ../src/config/default/gfx/legato/vector/legato_linef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aabb.o: ../src/config/default/gfx/legato/vector/legato_aabb.c  .generated_files/flags/default/629b8b52c8f6e8067bc92dd748449e926b1d61f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aabb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ../src/config/default/gfx/legato/vector/legato_aabb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aa.o: ../src/config/default/gfx/legato/vector/legato_aa.c  .generated_files/flags/default/795f4d54e4557b7784a2889954541597d79380ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aa.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aa.o ../src/config/default/gfx/legato/vector/legato_aa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_line.o: ../src/config/default/gfx/legato/vector/legato_vector_line.c  .generated_files/flags/default/bc9b5128f083a3f0ebdb9222076ce712832464e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ../src/config/default/gfx/legato/vector/legato_vector_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c  .generated_files/flags/default/bfcbbea3833b18160496623c8ed95e75e69e6e84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_hline.o: ../src/config/default/gfx/legato/vector/legato_vector_hline.c  .generated_files/flags/default/a85977cafb7200b54e2104d9e85df140043d5dd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ../src/config/default/gfx/legato/vector/legato_vector_hline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c  .generated_files/flags/default/5afaa1d11046357d4851b05affbb7cf50c34e854 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_u8.o: ../src/config/default/gfx/legato/core/legato_real_u8.c  .generated_files/flags/default/85e5f0c0156002bd9c15d9ecdaa8520405b0460d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ../src/config/default/gfx/legato/core/legato_real_u8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_point.o: ../src/config/default/gfx/legato/vector/legato_vector_point.c  .generated_files/flags/default/2f51f21e52c367b6c3d29e4b962374602a0b37cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ../src/config/default/gfx/legato/vector/legato_vector_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/default/6d14808e55079292d1a6f119d4902b10af58e044 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/default/349720f123d10ce5622488aa6429d3b73dc88699 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/default/b5aef14e1e5c84a4e897142274c1777aa19db85f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/default/7146190b5f7b00cf6b124eed6331b679983c8c3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/default/d27a3618375130dc741168d19f80a179f9e6c213 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ../src/config/default/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/default/c5cb7138a0c4559911ac4987b9ff50de7b8bc3b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/default/b092b7d00fd5511e4e47c87110e0e041d7263ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/default/26d3f034591bf5c327d2e85b175e16d03f96ebfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/default/9edbf7c404e3ae6d5d87dd3d92b3df1de2f6f404 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/default/48102cfd59ac9a2bc7c29a549d8298bfd96a1ddb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/6b3fe6995479fc105800a2bfea30335d4d317c74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/default/6bf92ee25fec49e0486f68b74d1a0a5a5c0b3f9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/default/7ab3e6aacc2b6f7f901e3a99766204303bc06bdf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/default/99abad98940553cbfdc92dc5c573b30bdf705ec9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/default/51925fb2f468434c3b6e659ad83e618c252f6673 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/default/24c24142406ebfedeb4f8e42081bfbd4dc513282 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/default/ec21777404713fa06caf6e63694ae4b8ff9796f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/default/b5e58c24674b66442e14d871fa7be674770352e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/default/a74e0fb72bd7a7151cd8d30a83f984d02ede8f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/default/2870ce9cc4a675b157dd2ddc07ec08c47c9e8fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/default/43bef6e95faf05dbc130bf93f11b6557c254835a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ../src/config/default/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/default/1c1a7da8de4981621fa58ed25a65f96e0864373e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/default/3a12e81fe7ea85ec7fc5019bcb8adfe4d82d37cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/default/3f922c04b5287bbd55bce7733bcb4b357844865d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/default/c1647486252ad21318043f5fa6f886df72e71ab1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/default/9a8744e5338bc84b861f3445240eaaf1bb4b99d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/default/227ae8f60ef6af4c498d1685ae38234a5c7127e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/default/3a10a78688d2ad4815dd7abba34292bad46083cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/default/c2682e5ef57fb1e1f0115d19b48715718d7fcc9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/default/507e7c102632bb0449878f5d792cd77deb94520c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/default/326613fba0e20d187ccb3c8090869acaed639e24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ../src/config/default/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/default/f51820e97b09ad114b4e9194aa227c1b5bc3c8be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/default/828fcd4251a86ec8173f644cde89cc4542e7662 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/default/2bc55aa9a8992453ace5d63cbc933db8d05b4fb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ../src/config/default/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/default/8a6e4b57f26bf8fcaf13503dd038abca134e8304 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/default/41caa026e955bd611eb7091fc5036a3cbc9ecc99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/default/9cc71de227eca5b3d84f954145a54120db8759c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ../src/config/default/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/default/7fa0c974cae7a2ed2044e70c978c95ea0c2b94db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/default/aa139818d67abbaa77a888581f201c801d801118 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/default/66c95c3908aab20db30edf8bd3f95ac76ad9bccf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/default/fed3904c9a528c0f81ef086c8b260323088b3678 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/default/d5c76dc601e67a858b04fc03d4b163bf6893583e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/default/88a5f5be7d35a6c6471d0d539ca7c82764b2c488 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/default/2673e5243f378107f0f352681283cab6d1d06bc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c  .generated_files/flags/default/fcc93543abeb98eb3bdb288cd741ba08917fb473 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/default/ca7247abc21f115c36df6821e2d292bc671134b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/default/99f53e8b91c24f5a3d2d4c093f9524a7ebf5df3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/default/cf772e198bfa91052fb1f12dc132e113c4b5c571 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/default/b48cefe8e49e729a7c9bca8df363e77ed43953af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/default/5cbe06634e6c9c57261668b41e7e8188f565a25d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/default/6b772820c18976a3c1b7ec04d28d9586cc1c2ab8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/default/db9d82dfe685cfb650558c9621e59eb3d7724af9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/default/321e01356842fb23799ac8e3c0ec2e710f75b2e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/default/6405573bf529d911153b65ae925ea7009f9bcff5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/default/abe40ba5f0870ecb796c8373a5a7932120ca536 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/default/c33b5d3fc54e6241a2468bf69bd031dccc8f2fa1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/default/bd1515f5439b1e838b5b385343e58bc1905cb1fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/default/166dfef4dccc7607662c8938bc32054a28a3c3d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/default/16b2a0b200f43f4c54d0cdff5834d9b6c1c94b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/default/9555ce92da88d0a3e957faf6bb29a61a52dba76d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/default/6a2251cac20f469d537d2d49472c55afb5d2316d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/default/d03956b0e2dbe04ecb50ec7f96cf9a653d7ed377 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ../src/config/default/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/default/30a647cc00bb59bb579f036687c4948db4ece58e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget.o: ../src/config/default/gfx/legato/widget/legato_widget.c  .generated_files/flags/default/b355ed7dcc032596a1e050de5330b498de45acfd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget.o ../src/config/default/gfx/legato/widget/legato_widget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_editwidget.o: ../src/config/default/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/default/e45cdb67a103c3f4492c96306f3499e184403ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ../src/config/default/gfx/legato/widget/legato_editwidget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/default/2f1a99b7995b817cdd4638927554a8519fff5b76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/6d77fa65d86fadbc0a20f1ca9b07a78190620b78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865171381/plib_dwdt.o: ../src/config/default/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/default/cb0269c3636ce7d7905738a2f0d697840a5d7a16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865171381" 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ../src/config/default/peripheral/dwdt/plib_dwdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o: ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c  .generated_files/flags/default/81979b6b7326a0704352f4ba9f8fafaaeb834bf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/429438372" 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d" -o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o: ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c  .generated_files/flags/default/963150b9438fb59d14cb15fe6323326a5c153180 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1818436620" 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d" -o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169263/plib_gic.o: ../src/config/default/peripheral/gic/plib_gic.c  .generated_files/flags/default/758c94d5b4555f1b78104f39f1eb002640be688d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169263" 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60169263/plib_gic.o.d" -o ${OBJECTDIR}/_ext/60169263/plib_gic.o ../src/config/default/peripheral/gic/plib_gic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60175171/plib_mmu.o: ../src/config/default/peripheral/mmu/plib_mmu.c  .generated_files/flags/default/94d2102ad7b56daed5311aa9ac76ac8acb74dc54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60175171" 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60175171/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ../src/config/default/peripheral/mmu/plib_mmu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/9b7f6b7f72ac5a55a7b104c0c655d55b55d9de73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o: ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c  .generated_files/flags/default/1d66a3866ac11eb3cff50b37b350175ec0d3c412 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1999033280" 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d" -o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/9b569b03c7660d21dbc06b7938f6446e08240e12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/446d1f6dea8d99b7a245fd244253ff12db05d108 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/be9fefd64916d876b9079b6fbc8b0745c75b28c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ff.o: ../src/config/default/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/default/1642720f4e57ed6dfd7a25967ad3512224d294b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ff.o.d" -o ${OBJECTDIR}/_ext/411819097/ff.o ../src/config/default/system/fs/fat_fs/file_system/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ffunicode.o: ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/default/2e5f8839b3fb738d0964885eefb72a4c6ab8d8d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ffunicode.o.d" -o ${OBJECTDIR}/_ext/411819097/ffunicode.o ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565198302/diskio.o: ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/default/8853601be3c6156f0355dfa6ba16fcb5ff691f8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565198302" 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565198302/diskio.o.d" -o ${OBJECTDIR}/_ext/565198302/diskio.o ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/flags/default/38619b8afb448bc61c128b448f55a92e94831901 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o: ../src/config/default/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/default/3d5c44a58f563d71f7b08206ea6af39135d4efc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ../src/config/default/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/default/997a9d46d4e55dfe900b1956908d95f8d36fe1e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input_listener.o: ../src/config/default/system/input/sys_input_listener.c  .generated_files/flags/default/4de5dcdaad8e66f2a2a19f89adae864088e59464 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ../src/config/default/system/input/sys_input_listener.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input.o: ../src/config/default/system/input/sys_input.c  .generated_files/flags/default/a00e1cbe63f8e9e9efa153389508c2af8e33e996 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input.o ../src/config/default/system/input/sys_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/dd87ebf298403f919c3fec1bcf8a6b4dae85b490 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/3e9170330ba86b0c733e125c0cb1d8882bc11e11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/b2deca21b10671f4db44bdd09b1a59f649ca5959 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/a92486f99ee0bc4922d61729a16272e8bae407bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f135bb056c0dad1d53b86d6fd5131d725b5f077f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/fault_handlers.o: ../src/config/default/fault_handlers.c  .generated_files/flags/default/9d001aeb66d5201688f6d2ce983f75a9d96460d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ../src/config/default/fault_handlers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jcomapi.o: ../src/third_party/jpeg-6b/jcomapi.c  .generated_files/flags/default/963ccb07d306c872e6f578032a240d106c31856f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jcomapi.o.d" -o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ../src/third_party/jpeg-6b/jcomapi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapimin.o: ../src/third_party/jpeg-6b/jdapimin.c  .generated_files/flags/default/d8632fa209581d202acb2c0f54059777e6e9087d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapimin.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ../src/third_party/jpeg-6b/jdapimin.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapistd.o: ../src/third_party/jpeg-6b/jdapistd.c  .generated_files/flags/default/2f5de17d3064a58eaff4bc0ef05070e42ef57941 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapistd.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ../src/third_party/jpeg-6b/jdapistd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdatasrc.o: ../src/third_party/jpeg-6b/jdatasrc.c  .generated_files/flags/default/abfb8fb27126119977ee8ef12cc71c1aa6da00b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ../src/third_party/jpeg-6b/jdatasrc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcoefct.o: ../src/third_party/jpeg-6b/jdcoefct.c  .generated_files/flags/default/41fbd08e056ea8825286cb473f017b9ece4c9a1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ../src/third_party/jpeg-6b/jdcoefct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcolor.o: ../src/third_party/jpeg-6b/jdcolor.c  .generated_files/flags/default/fcf3acb99584b01e6b0e7f4debf3a39421e6a9d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcolor.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ../src/third_party/jpeg-6b/jdcolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jddctmgr.o: ../src/third_party/jpeg-6b/jddctmgr.c  .generated_files/flags/default/3c05309ce1fd4e13ae2e6e314f4a04cd3ec9bab4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ../src/third_party/jpeg-6b/jddctmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdhuff.o: ../src/third_party/jpeg-6b/jdhuff.c  .generated_files/flags/default/b9f10e39dd542b251cc023ec276f6c76f8f584c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdhuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ../src/third_party/jpeg-6b/jdhuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdinput.o: ../src/third_party/jpeg-6b/jdinput.c  .generated_files/flags/default/feed27e56a89f21492cb0a91e6e17e4ded519934 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdinput.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdinput.o ../src/third_party/jpeg-6b/jdinput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmainct.o: ../src/third_party/jpeg-6b/jdmainct.c  .generated_files/flags/default/f6b870f0b59055c029c0bb328fde82e144899610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmainct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ../src/third_party/jpeg-6b/jdmainct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmarker.o: ../src/third_party/jpeg-6b/jdmarker.c  .generated_files/flags/default/5b279f273b61af69e0de4095343ada59c2127705 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmarker.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ../src/third_party/jpeg-6b/jdmarker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmaster.o: ../src/third_party/jpeg-6b/jdmaster.c  .generated_files/flags/default/5948962cdafad3946521e3cb52a903149acdb285 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmaster.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ../src/third_party/jpeg-6b/jdmaster.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmerge.o: ../src/third_party/jpeg-6b/jdmerge.c  .generated_files/flags/default/2aee85f6ceb92b2d4e92c85ded63b250442e01fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmerge.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ../src/third_party/jpeg-6b/jdmerge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdphuff.o: ../src/third_party/jpeg-6b/jdphuff.c  .generated_files/flags/default/d25a372e7ecf0ef8220f6bf6642c164bb703d74f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdphuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ../src/third_party/jpeg-6b/jdphuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdpostct.o: ../src/third_party/jpeg-6b/jdpostct.c  .generated_files/flags/default/9f7c205207f3a195f4fe6598180f231804cf6ae3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdpostct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ../src/third_party/jpeg-6b/jdpostct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdsample.o: ../src/third_party/jpeg-6b/jdsample.c  .generated_files/flags/default/d9e3653cfd2df1707bc54ffa404524ec90a6cefe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdsample.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdsample.o ../src/third_party/jpeg-6b/jdsample.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdtrans.o: ../src/third_party/jpeg-6b/jdtrans.c  .generated_files/flags/default/f45f6fef738cd2374483f8c07251801e149fa3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdtrans.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ../src/third_party/jpeg-6b/jdtrans.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jerror.o: ../src/third_party/jpeg-6b/jerror.c  .generated_files/flags/default/bcf032063d68f3c627ec5af4460102ecd3791fa8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jerror.o.d" -o ${OBJECTDIR}/_ext/1854554250/jerror.o ../src/third_party/jpeg-6b/jerror.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctflt.o: ../src/third_party/jpeg-6b/jidctflt.c  .generated_files/flags/default/ec6bea15b9b022b7765a2ff6afada6d25cc4f4eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctflt.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ../src/third_party/jpeg-6b/jidctflt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctfst.o: ../src/third_party/jpeg-6b/jidctfst.c  .generated_files/flags/default/c3ed10698a6af08d33a3afd3beadf2ace70716d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctfst.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ../src/third_party/jpeg-6b/jidctfst.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctint.o: ../src/third_party/jpeg-6b/jidctint.c  .generated_files/flags/default/1154231ac66bf6650f13e890047cc689b66f1ecf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctint.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctint.o ../src/third_party/jpeg-6b/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctred.o: ../src/third_party/jpeg-6b/jidctred.c  .generated_files/flags/default/378d5004cc5e2e0a53cb1a14d0c9825b5f1bf30e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctred.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctred.o ../src/third_party/jpeg-6b/jidctred.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemmgr.o: ../src/third_party/jpeg-6b/jmemmgr.c  .generated_files/flags/default/4fd3d0a84485859d99f0e4e1ec9116cc8cea1747 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ../src/third_party/jpeg-6b/jmemmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemnobs.o: ../src/third_party/jpeg-6b/jmemnobs.c  .generated_files/flags/default/65332fb84c422156f05eabfab01a28dda43c1a95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ../src/third_party/jpeg-6b/jmemnobs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant1.o: ../src/third_party/jpeg-6b/jquant1.c  .generated_files/flags/default/c620d18eee045040e3f5aa543d05d2dfb92e580c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant1.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant1.o ../src/third_party/jpeg-6b/jquant1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant2.o: ../src/third_party/jpeg-6b/jquant2.c  .generated_files/flags/default/f71558a1ebf0982d95e56297d98d622b00d68f24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant2.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant2.o ../src/third_party/jpeg-6b/jquant2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jutils.o: ../src/third_party/jpeg-6b/jutils.c  .generated_files/flags/default/3c6bcbbf5235ebe5a09d9aa8f5f148a06bb0ce5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jutils.o.d" -o ${OBJECTDIR}/_ext/1854554250/jutils.o ../src/third_party/jpeg-6b/jutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/907e9b7d5a130a1f76c79fdab78781b4c3a2b2b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4c6239742630b4b483fac1e147d27429c04cb69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_help.o: ../src/app_screen_help.c  .generated_files/flags/default/b75a7e4711769d89009917b53c88d051df304845 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ../src/app_screen_help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_home.o: ../src/app_screen_home.c  .generated_files/flags/default/8551b267e0bf545aee53dfb08fcdc4ceb0c1ca13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ../src/app_screen_home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/djpeg.o: ../src/djpeg.c  .generated_files/flags/default/798360c1f81aeb6090073a7a31a6f20b6521c64e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/djpeg.o.d" -o ${OBJECTDIR}/_ext/1360937237/djpeg.o ../src/djpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/h3_string.o: ../src/h3_string.c  .generated_files/flags/default/954d19acc29dd44b8fea6a9127961e18a44e98f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/h3_string.o.d" -o ${OBJECTDIR}/_ext/1360937237/h3_string.o ../src/h3_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/4378bb1a2399a58d3655edf5a96ba00637b36f5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/d54781cd9bbdeddd6155252b9afe9963edfb162b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/default/1d8a0e956ecabc97da8ee3df87708b223b0cbc4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ../src/config/default/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/default/85c5eb470f9f9b90121ffa5558a0157334a36a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1992993867/ws_touch_display.o: ../src/config/default/gfx/display/ws_touch_display.c  .generated_files/flags/default/2050c06e6ddebdddb2c949d681423595844972ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1992993867" 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d" -o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ../src/config/default/gfx/display/ws_touch_display.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/614491576/plib_dsi.o: ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c  .generated_files/flags/default/281a2f20b416062184edb25ab59e6f5e70b63ed1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/614491576" 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/614491576/plib_dsi.o.d" -o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1319235455/gfx_driver.o: ../src/config/default/gfx/driver/gfx_driver.c  .generated_files/flags/default/f1f545bb4293070e5fff7476e2783c91a468511d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1319235455" 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ../src/config/default/gfx/driver/gfx_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c  .generated_files/flags/default/701ccc1a9c2803c0721e9688cf5e417da3bb4d28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/119635701" 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d" -o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/412764825/plib_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c  .generated_files/flags/default/6eb08ffb2a77f32ce5cf4c28882f1e82ad061fea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/412764825" 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d" -o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_utils.o: ../src/config/default/gfx/legato/common/legato_utils.c  .generated_files/flags/default/1b39f30089f79feae3a9f7f3ae642d8bbfb6f25c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ../src/config/default/gfx/legato/common/legato_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_blend.o: ../src/config/default/gfx/legato/common/legato_color_blend.c  .generated_files/flags/default/51a5023415410b3f2dfbbacfc473c87cc0bc8553 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ../src/config/default/gfx/legato/common/legato_color_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color.o: ../src/config/default/gfx/legato/common/legato_color.c  .generated_files/flags/default/4bf0f44c4d8e9c5f91f195bab3af5d505f0732f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color.o ../src/config/default/gfx/legato/common/legato_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o: ../src/config/default/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/default/e0afcfd23f300ee86c882e16366c9889766b7a06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ../src/config/default/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o: ../src/config/default/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/default/edfa5874f92acad121252129e3bf592fa0d74377 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ../src/config/default/gfx/legato/common/legato_color_lerp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_error.o: ../src/config/default/gfx/legato/common/legato_error.c  .generated_files/flags/default/d43016ede5e44908a0b5bacdd5de0b736ee578ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_error.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_error.o ../src/config/default/gfx/legato/common/legato_error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_math.o: ../src/config/default/gfx/legato/common/legato_math.c  .generated_files/flags/default/e4690b20b24c8beafd48f2f71001c556328787b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_math.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_math.o ../src/config/default/gfx/legato/common/legato_math.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_value.o: ../src/config/default/gfx/legato/common/legato_color_value.c  .generated_files/flags/default/e6505d01712f260d76923e4c5cee866405e77dc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ../src/config/default/gfx/legato/common/legato_color_value.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_convert.o: ../src/config/default/gfx/legato/common/legato_color_convert.c  .generated_files/flags/default/ba3399a7b9d5fcbd26703b4460d3c8e9afc71d98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ../src/config/default/gfx/legato/common/legato_color_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_rect.o: ../src/config/default/gfx/legato/common/legato_rect.c  .generated_files/flags/default/88988f9baa514b5f56d9630bd4d10e3354d4c72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ../src/config/default/gfx/legato/common/legato_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_stream.o: ../src/config/default/gfx/legato/core/legato_stream.c  .generated_files/flags/default/203c13d4eb94b1455275f745e43c1ca22a689388 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_stream.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_stream.o ../src/config/default/gfx/legato/core/legato_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_state.o: ../src/config/default/gfx/legato/core/legato_state.c  .generated_files/flags/default/54ac4433b79bb42a967d94cdca4a78f8458402bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_state.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_state.o ../src/config/default/gfx/legato/core/legato_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_scheme.o: ../src/config/default/gfx/legato/core/legato_scheme.c  .generated_files/flags/default/4e29c2e7bd501f79c6c27dcc099be05c26b81224 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ../src/config/default/gfx/legato/core/legato_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_input.o: ../src/config/default/gfx/legato/core/legato_input.c  .generated_files/flags/default/b15277acb023606c19897387bd0f867580d647f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_input.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_input.o ../src/config/default/gfx/legato/core/legato_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_event.o: ../src/config/default/gfx/legato/core/legato_event.c  .generated_files/flags/default/4fc31707e46f7445f250503242b7743632410932 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_event.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_event.o ../src/config/default/gfx/legato/core/legato_event.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_rectarray.o: ../src/config/default/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/default/bd550e68eec6f239fdcf6153cda10ace63198bb4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ../src/config/default/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_list.o: ../src/config/default/gfx/legato/datastructure/legato_list.c  .generated_files/flags/default/2424a12b98e48c1b1514af2156e4bb22a6594950 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_list.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_list.o ../src/config/default/gfx/legato/datastructure/legato_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_array.o: ../src/config/default/gfx/legato/datastructure/legato_array.c  .generated_files/flags/default/5fedbb96aba4fcebaad91b30d24744eb51ac7084 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_array.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_array.o ../src/config/default/gfx/legato/datastructure/legato_array.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/default/4d97af5e851cc272f7d86625cd69c2cf70484f11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/default/b642facf9d1f75f2c2491f5349b22a5c9f4d6c5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_font.o: ../src/config/default/gfx/legato/font/legato_font.c  .generated_files/flags/default/c266131e8cb8911dfdd33b95f2954fc94bbecc6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_font.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_font.o ../src/config/default/gfx/legato/font/legato_font.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o: ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/default/88451d0b2c75312a9973d38bfa5ee0df1766bb31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o: ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/default/cfb8a098637893653289869b9e52cfe1770107cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1494086919" 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/930643953/le_gen_images.o: ../src/config/default/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/default/11ce51b1bc3e164df93b2b786ff3614617c5f0d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/930643953" 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/930643953/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ../src/config/default/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c  .generated_files/flags/default/b095dca8d1c79bdff62309c3d75efcdd54ba441b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c  .generated_files/flags/default/4533e510fe90d5d9e6ed8a0c0ac24fd2e3e881f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o: ../src/config/default/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/default/963a8acf057bc99741c01c5f56fb43b20de13033 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ../src/config/default/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o: ../src/config/default/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/default/64c3c4d98c85550aaf30c5ba412f31f64cce97a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ../src/config/default/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_init.o: ../src/config/default/gfx/legato/generated/le_gen_init.c  .generated_files/flags/default/7529cca5e5835c14333b7ccbaa7d0c94d17747f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ../src/config/default/gfx/legato/generated/le_gen_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o: ../src/config/default/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/default/c61c99b112a14d2e1b3f9e3c3c57540286cd0e96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ../src/config/default/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o: ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/default/cb530dcf408c463831a14dd2a899355e77aae7d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/default/d096d226fee52b371dc10bb373849d16832d227a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/jidctint.o: ../src/config/default/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/default/96de6e84e77a3776acc26d9e100fd075d9baba77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/jidctint.o.d" -o ${OBJECTDIR}/_ext/1395618758/jidctint.o ../src/config/default/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/default/811bda2d39f5fff5b993b030d30df5eab5d55a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/default/f76a0c7fab1c2f1848d4335900de190eb3c5ca1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/default/b426ae1e90793639fcff5519e2850d37ec177ca8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/default/181f20739c61268f59e222667ffe3dd81011e877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o: ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/default/fc2b2a082d38e1de55b2b5065ff675ff63c25fcb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/lodepng.o: ../src/config/default/gfx/legato/image/png/lodepng.c  .generated_files/flags/default/373ca9b4156e3c33d24017699ce048de5b94e6a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/lodepng.o.d" -o ${OBJECTDIR}/_ext/460667659/lodepng.o ../src/config/default/gfx/legato/image/png/lodepng.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/default/2c4d426235a8408ed69d98f8a28e7c92892f62c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/default/11fcf142620c5aee6f6455a5f358a5cdd40c985e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/default/211cb15addbb7c807d94ad37f1318927b9618fcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/default/42de4d2ff471f81dbe256f35ea56c4949e0973d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/default/3739595742a9c7c68fe182727704ae9807476ffa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/default/653fff16f3deeb149c955b337fbcf92ccc6f5e37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/default/628ac17f69021b31024e5268d21f1ca8a274a97b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/default/c4d504a22516fec3c27764a02df8037959fe90a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/default/2548bfc0e84e6a13ee3da6b5a03bd2ce47cb9f91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/default/b5d7a05c834defc444c7e6c1896e98fbd9bf9ae6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/default/58c56b1b56534f9d09319edc741649d492190fe8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/default/1aa7cfe77ef7b6b44cdb842a409220f2ed6da325 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/default/11cd72aa63ad2c5936fe5a9529da8b41a5e4c5d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/default/b2bd0a81c9c32a076b239e47c0841f37691b3044 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/default/14db7c99e2cb41fc62a1bd2f0b2b8cc7368ec4a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image.o: ../src/config/default/gfx/legato/image/legato_image.c  .generated_files/flags/default/a58cce5681e4461c15fc3584fde2efbcf41f43f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image.o ../src/config/default/gfx/legato/image/legato_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image_utils.o: ../src/config/default/gfx/legato/image/legato_image_utils.c  .generated_files/flags/default/fcec75dafe4a61ee87faa38498e7996eca01f5be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ../src/config/default/gfx/legato/image/legato_image_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_palette.o: ../src/config/default/gfx/legato/image/legato_palette.c  .generated_files/flags/default/364964ab115111d6d5c0c1f6540050d45b0bf505 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_palette.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ../src/config/default/gfx/legato/image/legato_palette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o: ../src/config/default/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/default/8d74daf43b6bc0ea8e1f7bf4e6cc6f2c8fc11e9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ../src/config/default/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_memory.o: ../src/config/default/gfx/legato/memory/legato_memory.c  .generated_files/flags/default/549ca50c26fcd2e73ec7e197a8df3622b529263a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_memory.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ../src/config/default/gfx/legato/memory/legato_memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_variableheap.o: ../src/config/default/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/default/ae3c445b03d06b23c97085cdfa9f0b0d62224495 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ../src/config/default/gfx/legato/memory/legato_variableheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_line.o: ../src/config/default/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/default/72f7e9481ec104a423a72d76e535959a3d36186e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ../src/config/default/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_gpu.o: ../src/config/default/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/default/2e4d006afee55f58822acb2c333ccbe6d1593de3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ../src/config/default/gfx/legato/renderer/legato_gpu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_arc.o: ../src/config/default/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/default/fbb98409303d2711a4fd5b61c358e91ac2e69656 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ../src/config/default/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_rect.o: ../src/config/default/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/default/dd3f018d016329d26c11d8efde33b30e97d951b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ../src/config/default/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw.o: ../src/config/default/gfx/legato/renderer/legato_draw.c  .generated_files/flags/default/98de69ae3d574323c8b8ebb8641a746064177804 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw.o ../src/config/default/gfx/legato/renderer/legato_draw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_renderer.o: ../src/config/default/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/default/d2718d6ee5e42c9c9fbd5f7a77187557deeeb50f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ../src/config/default/gfx/legato/renderer/legato_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o: ../src/config/default/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/default/2a64999e99fab12bda6a4bcf9fbfa717ffad4279 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ../src/config/default/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringutils.o: ../src/config/default/gfx/legato/string/legato_stringutils.c  .generated_files/flags/default/fee44cbcd43e244060ad54642019e84c937b1d0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ../src/config/default/gfx/legato/string/legato_stringutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_tablestring.o: ../src/config/default/gfx/legato/string/legato_tablestring.c  .generated_files/flags/default/e2c1c43ec4e9cf8386505a6a0f5b65dcec64c454 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ../src/config/default/gfx/legato/string/legato_tablestring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o: ../src/config/default/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/default/8836989ccf140690e45c04e848b2413adab672cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ../src/config/default/gfx/legato/string/legato_string_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o: ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/default/b64b21b01c943914322c11042c1ae31a9189216e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string.o: ../src/config/default/gfx/legato/string/legato_string.c  .generated_files/flags/default/7ea5e812f357e340584722ca1dd51dafc05e164c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string.o ../src/config/default/gfx/legato/string/legato_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringtable.o: ../src/config/default/gfx/legato/string/legato_stringtable.c  .generated_files/flags/default/a3afe71e259368110bbcbd2574436f3c22123610 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ../src/config/default/gfx/legato/string/legato_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o: ../src/config/default/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/default/ae022ffcb334d8bb671f7e3837f3d4c67ae46b94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ../src/config/default/gfx/legato/string/legato_fixedstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o: ../src/config/default/gfx/legato/vector/legato_vector_kernel.c  .generated_files/flags/default/df3e5e1f3f168f1d1532758ee346b7fa4e237c54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ../src/config/default/gfx/legato/vector/legato_vector_kernel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_rectf.o: ../src/config/default/gfx/legato/vector/legato_rectf.c  .generated_files/flags/default/20d28b7d440b34e164a33b8d69cdf0e52ce7086 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_rectf.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ../src/config/default/gfx/legato/vector/legato_rectf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c  .generated_files/flags/default/aa000ef860138fb3a46e8942f921a39df6bbb5ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_i16.o: ../src/config/default/gfx/legato/core/legato_real_i16.c  .generated_files/flags/default/68be3ff389c06e60c8935bd0b294374461bfac16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ../src/config/default/gfx/legato/core/legato_real_i16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c  .generated_files/flags/default/e1f177f863fc6cd2a492b5b60c8303bf9ae0ba83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_vline.o: ../src/config/default/gfx/legato/vector/legato_vector_vline.c  .generated_files/flags/default/472e4b6351adf3fce8c7384de946820d2e871c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ../src/config/default/gfx/legato/vector/legato_vector_vline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_point.o: ../src/config/default/gfx/legato/vector/legato_point.c  .generated_files/flags/default/1717fc29b948e2b282198fb79ee133c171665836 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_point.o ../src/config/default/gfx/legato/vector/legato_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector2.o: ../src/config/default/gfx/legato/vector/legato_vector2.c  .generated_files/flags/default/b339f1bdc92953d56263b40b99b6911a14d71663 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector2.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ../src/config/default/gfx/legato/vector/legato_vector2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_obb.o: ../src/config/default/gfx/legato/vector/legato_obb.c  .generated_files/flags/default/2672a02af669ebc6078d73a5f6deb423be283846 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_obb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_obb.o ../src/config/default/gfx/legato/vector/legato_obb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_plane.o: ../src/config/default/gfx/legato/vector/legato_plane.c  .generated_files/flags/default/7099420a3b81563b985291d46c43a66771d07fc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_plane.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_plane.o ../src/config/default/gfx/legato/vector/legato_plane.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c  .generated_files/flags/default/cbef147d7d39e7f597bfb21ce982cc55c6004a38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_linef.o: ../src/config/default/gfx/legato/vector/legato_linef.c  .generated_files/flags/default/32b244dd751cbd1a7ab5c4a5235a96d346c38c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_linef.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_linef.o ../src/config/default/gfx/legato/vector/legato_linef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aabb.o: ../src/config/default/gfx/legato/vector/legato_aabb.c  .generated_files/flags/default/c9d72fe2054d957bfbc07caeb8951b72e2422b61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aabb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ../src/config/default/gfx/legato/vector/legato_aabb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aa.o: ../src/config/default/gfx/legato/vector/legato_aa.c  .generated_files/flags/default/707007256df060354ff117e4e7a00d80ff62a026 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aa.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aa.o ../src/config/default/gfx/legato/vector/legato_aa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_line.o: ../src/config/default/gfx/legato/vector/legato_vector_line.c  .generated_files/flags/default/eeda29f1e260ce6ce2b738d0ac74f98799eeddb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ../src/config/default/gfx/legato/vector/legato_vector_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c  .generated_files/flags/default/af339d77e5ac7ee1efe313f4f94b5baf8ce568e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_hline.o: ../src/config/default/gfx/legato/vector/legato_vector_hline.c  .generated_files/flags/default/9bf558b487f7208b2fd640b62bb19aece5475337 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ../src/config/default/gfx/legato/vector/legato_vector_hline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c  .generated_files/flags/default/ce2f06a27fe19dd538014be2d0e2be759200f383 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_u8.o: ../src/config/default/gfx/legato/core/legato_real_u8.c  .generated_files/flags/default/a26bb8533f0b14ffc5b33194d4bca759690e0081 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ../src/config/default/gfx/legato/core/legato_real_u8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_point.o: ../src/config/default/gfx/legato/vector/legato_vector_point.c  .generated_files/flags/default/3fc6aa46132717bd2c55ef88a43bccd69646fd32 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ../src/config/default/gfx/legato/vector/legato_vector_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/default/5f35b946109a8e3ed334077f1a8fe4d380785799 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/default/c62d0417b2c7ed641ac3fc48f413c4aa9238b67a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/default/5295eecdb8adda09cff57b1ef5a57332db0d7e6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/default/d4f7aff609ffc8beed5b9251e005e99a3d93589c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/default/603aa880dd662ab3dd8ef49ca9ce6892c783decb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ../src/config/default/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/default/cb8774e43d38a51512cf7b2a5919b8dc58627f4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/default/1981e53f9c09228d830bf392be72a86ae4f44bbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/default/d0149464d4787c1bbaabc7c13ea728dec0babf05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/default/11b5a08f84ae0cdf17b20e9d955cf27819af9722 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/default/2ed080825b1f5011f943a3f2ac774e1c9ff5ffb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/5057fe842abce19b3ad8ca6a1b90c3c8bcd3b7e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/default/d3adbcae61d43e0da24f6f4c9e5a9446fd672395 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/default/a1d0c26e57b838f56beee3ed0e4570bd09c98a27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/default/5282c3a40a369b1dff1f60d006a9f7035032efab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/default/757a843134b107d61d937440ae07e47722698a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/default/a3b2b7ab228fa98170dea128633e0ef4f8509d92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/default/6cc4051a294454e7cdd50ebe2505fd63868f2a48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/default/5a7f38e3e3f961638c2017baa8d8d2ac8226b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/default/6206b7a7168ba41f6b3f142db582c85693874eb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/default/4e8e68364fb89d870208474eddf63a6910e9cbd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/default/43c2800e1368f394b8aaed8fa3ee0d994569ec45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ../src/config/default/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/default/956d79d361ebe5ffb6fdadb5554828e831d9c795 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/default/4d3fbda10cb685561d70015f424acf3c2eeef8b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/default/e0a79549d166a0b34ec4e3cbc5521a46bc90f190 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/default/761c32c8723ba1063f661cc1dc6b88e31b253f29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/default/411ea31ed27dd4fe890475f90b39d73086761a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/default/5e10eff6f3cb41eecd8bea22d85db35d6c3ae0a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/default/8e984e4c12aac0177835f85b9d5f045fb2312dc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/default/8a8fac5d0bf9ba144b3fbb1263bbb90d122cdf7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/default/b94638599018d26340811ac21db5d2c38e52d42a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/default/fba589e2eb40e08423cc9bfc83643a3d9d8d0880 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ../src/config/default/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/default/bcf7c53768e93d7e838123999f4f2b3a0423f7fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/default/fbfe2f77a1c931a9d98a48e282f7fd1dab88af78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/default/794ff27625e68d12e868baa31582fc6c868084b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ../src/config/default/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/default/3c6a48b6383b021da6e38b6409f52aafffa46d43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/default/c6706f6da66f89e6fa93a8aa9d104e0725581e57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/default/16aedcd0f58a310bf150a794d2fa8f6e86fd42f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ../src/config/default/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/default/d20575af464a949bbc290ae43c6193f6976b4d1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/default/c863b920197c2b5a2144f706e0ce973b1b333a15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/default/16c51b6b891404a976769cf1b733934d9b270b0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/default/3353db7b29000059a5ba30e3c461c07e0dbdac08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/default/c62ca63837049210ab391724feda67a7a5c8811e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/default/73b08afbe2ecb9e3df3cc42fc85019f818273911 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/default/cd3034c0eb159e031da5a177c30546dbbf6c1f34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c  .generated_files/flags/default/5c2e42aa855a426b52e680b5fcc0393df375ffd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/default/6fc01194c07f1cd10781330719c5d1acd6212fb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/default/b6c51e4c2d1cd788fbab733748bf0b3a21df3e73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/default/6467781309084391e6681af616192d7ce1022147 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/default/dd972aa5c9ad28982a4945cf9313696a1686463 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/default/bf13a8ba411357e190388f96d176a75cf3e4c865 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/default/32f9fcef56a75dd587f7ff048517daf474c597e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/default/a90f2f9a14a6e1b2b1d814ec249cb410c657f4a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/default/84574127140cd61ca7bf69f517c98f41ecfc6f40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/default/e29b10eaac7f7edd75afe494779dccdb2ec24ad3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/default/cea042532e02afa0509916e7916a71e8a1c04868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/default/63ac39876f9e43abcafe146b20e2283a142db748 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/default/b8db0cb596175a4e44cf85b733e3a607f63cd1cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/default/f674f55b04de04c4b9b51bab1ed00f0fa4d5ab5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/default/9199a81d9d63878270ef7b6ca6ff128e9ecfed84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/default/71661cb628f31ebdc7676da276a43552b93cfff2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/default/16edfd22ee7e7b8eb3526af914af4c6d3fbf0cd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/default/13206ea0de7edbb77992e16f12c3294a7c5d64d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ../src/config/default/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/default/3290082c50beb0daaabc4e8cb7eab22176866fa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget.o: ../src/config/default/gfx/legato/widget/legato_widget.c  .generated_files/flags/default/52ca28a850fa7a285636ce873d7c995a2bcbd06d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget.o ../src/config/default/gfx/legato/widget/legato_widget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_editwidget.o: ../src/config/default/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/default/3771dfe2a9ee83e56bc10b64fb01c17e6fbe7350 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ../src/config/default/gfx/legato/widget/legato_editwidget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/default/2ae2b1d7422ceb4aeda3b8cc4f82de1b05165d6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/f02ee2fc4c4545a86c2a55af2984ac0a456e891a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865171381/plib_dwdt.o: ../src/config/default/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/default/93c048e1d3de35a6f39d4d580bcd2902c4f36699 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865171381" 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ../src/config/default/peripheral/dwdt/plib_dwdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o: ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c  .generated_files/flags/default/9259ea0661e48c2f943c373829d3b425bf782eb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/429438372" 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d" -o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o: ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c  .generated_files/flags/default/51fd21ba60cb2f8ff639ac2e18cd9143bd93c1e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1818436620" 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d" -o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169263/plib_gic.o: ../src/config/default/peripheral/gic/plib_gic.c  .generated_files/flags/default/bbcabbaed127d601d81add592106c87bf1a9b724 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169263" 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60169263/plib_gic.o.d" -o ${OBJECTDIR}/_ext/60169263/plib_gic.o ../src/config/default/peripheral/gic/plib_gic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60175171/plib_mmu.o: ../src/config/default/peripheral/mmu/plib_mmu.c  .generated_files/flags/default/b8eadfb178f2285ffae23a2b6057d8570b65ef9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60175171" 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60175171/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ../src/config/default/peripheral/mmu/plib_mmu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/7d8ca5081be561a572f702c9be8c17dc118decc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o: ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c  .generated_files/flags/default/fc78692fa770f8aff837e0d8856117a85675bd1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1999033280" 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d" -o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/deca3664f8b155c320a6302985a59b64509c7244 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/c1ec6de5900c445efdf96ee3602b017c446ddcd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/4fa91b5580f0867e3e853933b9d1a7a11ee69a95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ff.o: ../src/config/default/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/default/cc77db1107a0ae9bd2ae9ad7187ce47f6a4d5146 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ff.o.d" -o ${OBJECTDIR}/_ext/411819097/ff.o ../src/config/default/system/fs/fat_fs/file_system/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ffunicode.o: ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/default/49a5eff4275d4839e48f1f94730f2541e4019b7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ffunicode.o.d" -o ${OBJECTDIR}/_ext/411819097/ffunicode.o ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565198302/diskio.o: ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/default/fdf4a09efe92c52a6e6b6eb4f49f75c69b4ee819 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565198302" 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565198302/diskio.o.d" -o ${OBJECTDIR}/_ext/565198302/diskio.o ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/flags/default/33f481da12a95878f1dde4c5590a840d44d22884 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o: ../src/config/default/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/default/e979e257b895c83e93e91ae8a21eb886104f020 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ../src/config/default/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/default/e74e8fe644972bba8cf8f491989f6ba9f14517ee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input_listener.o: ../src/config/default/system/input/sys_input_listener.c  .generated_files/flags/default/9fc8ccde16430a76c20c819d72f9066f4d2f8c55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ../src/config/default/system/input/sys_input_listener.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input.o: ../src/config/default/system/input/sys_input.c  .generated_files/flags/default/684e4bc6c3c4a6fb66a0ab26863aeabb62a90d0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input.o ../src/config/default/system/input/sys_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/f7918de3e59e824bac38bb7843f8f862223c0cd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/efb5187f0f1db8df745b3b1b96ee0d5d42734bee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/747a74dc4aeb857e4391df984cb843d8ecc6b4e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/f848f6f144dac7bb22e9a608f2e9f389e69c054a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/1b55fef53b5611ff9ed565868503aa8a7c0bb966 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/fault_handlers.o: ../src/config/default/fault_handlers.c  .generated_files/flags/default/44dcfdccc11afc69a63aec3946e9e7f2a902326e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ../src/config/default/fault_handlers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jcomapi.o: ../src/third_party/jpeg-6b/jcomapi.c  .generated_files/flags/default/2773068c297ab3349421a4c06f40d27419ed179e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jcomapi.o.d" -o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ../src/third_party/jpeg-6b/jcomapi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapimin.o: ../src/third_party/jpeg-6b/jdapimin.c  .generated_files/flags/default/1f00290599f66ce0210b01ac8f59c27a47a97957 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapimin.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ../src/third_party/jpeg-6b/jdapimin.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapistd.o: ../src/third_party/jpeg-6b/jdapistd.c  .generated_files/flags/default/f66ed542881ac38803d98f4b3f02f712b110ffd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapistd.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ../src/third_party/jpeg-6b/jdapistd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdatasrc.o: ../src/third_party/jpeg-6b/jdatasrc.c  .generated_files/flags/default/c2ad219b5c3d76f23cb1fbbce819df262e908225 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ../src/third_party/jpeg-6b/jdatasrc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcoefct.o: ../src/third_party/jpeg-6b/jdcoefct.c  .generated_files/flags/default/1b734dd398086394df62cb730a0fe41ac40c9222 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ../src/third_party/jpeg-6b/jdcoefct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcolor.o: ../src/third_party/jpeg-6b/jdcolor.c  .generated_files/flags/default/f9bb3f3a6db622ce4300796d3102d68d7f9bd922 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcolor.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ../src/third_party/jpeg-6b/jdcolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jddctmgr.o: ../src/third_party/jpeg-6b/jddctmgr.c  .generated_files/flags/default/5e7f64031bfc144949aa50fcfdb0aab6dd7dcb8d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ../src/third_party/jpeg-6b/jddctmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdhuff.o: ../src/third_party/jpeg-6b/jdhuff.c  .generated_files/flags/default/9b9e6cccb35c299f9842f42f8d09742ce70872b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdhuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ../src/third_party/jpeg-6b/jdhuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdinput.o: ../src/third_party/jpeg-6b/jdinput.c  .generated_files/flags/default/abfbb48ec122fb28d7a28cd439a53161e5451eed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdinput.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdinput.o ../src/third_party/jpeg-6b/jdinput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmainct.o: ../src/third_party/jpeg-6b/jdmainct.c  .generated_files/flags/default/2c5a7458bdda189392e36ff2d076d8b96c69f99a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmainct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ../src/third_party/jpeg-6b/jdmainct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmarker.o: ../src/third_party/jpeg-6b/jdmarker.c  .generated_files/flags/default/62042037b7995c115aee7aca72ea2f975c248bd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmarker.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ../src/third_party/jpeg-6b/jdmarker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmaster.o: ../src/third_party/jpeg-6b/jdmaster.c  .generated_files/flags/default/645c62a8b439297b4f0f560a52d880f5aac3a180 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmaster.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ../src/third_party/jpeg-6b/jdmaster.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmerge.o: ../src/third_party/jpeg-6b/jdmerge.c  .generated_files/flags/default/7c6cee3c79de77c355523c0b8a04e45a26cda38f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmerge.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ../src/third_party/jpeg-6b/jdmerge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdphuff.o: ../src/third_party/jpeg-6b/jdphuff.c  .generated_files/flags/default/a3af8e1c557f123d3a0ef8f5b7e9dbbace140e12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdphuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ../src/third_party/jpeg-6b/jdphuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdpostct.o: ../src/third_party/jpeg-6b/jdpostct.c  .generated_files/flags/default/90da6711b8fe6ec6a77309d265bbcbae6616096f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdpostct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ../src/third_party/jpeg-6b/jdpostct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdsample.o: ../src/third_party/jpeg-6b/jdsample.c  .generated_files/flags/default/25120fcd849edb3da8c275a1ed9f2064c5fb674a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdsample.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdsample.o ../src/third_party/jpeg-6b/jdsample.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdtrans.o: ../src/third_party/jpeg-6b/jdtrans.c  .generated_files/flags/default/34e078dcb1d6781ccc2e748bb67c789f97ee0fd4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdtrans.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ../src/third_party/jpeg-6b/jdtrans.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jerror.o: ../src/third_party/jpeg-6b/jerror.c  .generated_files/flags/default/3278dcb5f3b99c6967533b28e57302e8b178099a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jerror.o.d" -o ${OBJECTDIR}/_ext/1854554250/jerror.o ../src/third_party/jpeg-6b/jerror.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctflt.o: ../src/third_party/jpeg-6b/jidctflt.c  .generated_files/flags/default/af59d2c16393a9f078842d2ca853e077a553c7c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctflt.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ../src/third_party/jpeg-6b/jidctflt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctfst.o: ../src/third_party/jpeg-6b/jidctfst.c  .generated_files/flags/default/35f9bfb2efa2ca95a59416d5ef0602f46ef8f3db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctfst.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ../src/third_party/jpeg-6b/jidctfst.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctint.o: ../src/third_party/jpeg-6b/jidctint.c  .generated_files/flags/default/9822936dd9979e053c775d2b4f90b475e4f2a40f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctint.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctint.o ../src/third_party/jpeg-6b/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctred.o: ../src/third_party/jpeg-6b/jidctred.c  .generated_files/flags/default/4073d68db502e0aa1bd13e0e8b887a493a4f2e11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctred.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctred.o ../src/third_party/jpeg-6b/jidctred.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemmgr.o: ../src/third_party/jpeg-6b/jmemmgr.c  .generated_files/flags/default/fb43333b80c4075b2ca02f9b42071cbf2fafe046 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ../src/third_party/jpeg-6b/jmemmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemnobs.o: ../src/third_party/jpeg-6b/jmemnobs.c  .generated_files/flags/default/1b5afa7f0675f0074c361e4c054bbf78e981a731 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ../src/third_party/jpeg-6b/jmemnobs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant1.o: ../src/third_party/jpeg-6b/jquant1.c  .generated_files/flags/default/e0c4c948e03485673903b9aaac79db465587e192 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant1.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant1.o ../src/third_party/jpeg-6b/jquant1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant2.o: ../src/third_party/jpeg-6b/jquant2.c  .generated_files/flags/default/de2ab56af05e8231d7739ccf47f4e63d2c009697 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant2.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant2.o ../src/third_party/jpeg-6b/jquant2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jutils.o: ../src/third_party/jpeg-6b/jutils.c  .generated_files/flags/default/bd82550da60d396421851a5025b4ae7c774d1a55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jutils.o.d" -o ${OBJECTDIR}/_ext/1854554250/jutils.o ../src/third_party/jpeg-6b/jutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/8ba899a9ce36ee61a32bee50a9d5ad426684ff65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/34cc64b445ad1388385ce74dd3c732f97afb4ccb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_help.o: ../src/app_screen_help.c  .generated_files/flags/default/a6b97ec89454bbc809ecfdaf688b787f722fcdb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ../src/app_screen_help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_home.o: ../src/app_screen_home.c  .generated_files/flags/default/e6d157dfc22ca4c8b6c96b39a7a02a4fba584c5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ../src/app_screen_home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/djpeg.o: ../src/djpeg.c  .generated_files/flags/default/3fdfa2046641eb4be4f3f442b857da48dc0bbea6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/djpeg.o.d" -o ${OBJECTDIR}/_ext/1360937237/djpeg.o ../src/djpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/h3_string.o: ../src/h3_string.c  .generated_files/flags/default/61808f5ae0597a9c639d6b8a655a299775722f22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/h3_string.o.d" -o ${OBJECTDIR}/_ext/1360937237/h3_string.o ../src/h3_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8000000,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8000000,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/djpeg_ddr_sama7d65cu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
