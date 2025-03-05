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
FINAL_IMAGE=${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
ProjectDir="C:\Work\H3\a7d65\ws\sdmmc_fat\sam_a7d65_curiosity.X"
ProjectName=sdmmc_fat_sam_a7d65_curiosity
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/_ext/1171490990/cstartup.o: ../src/config/default/cstartup.S  .generated_files/flags/default/f5d5beb0bcb86102229e80e5decb0d5ea3a71411 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1171490990/cstartup.o.ok ${OBJECTDIR}/_ext/1171490990/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1171490990/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1171490990/cstartup.o ../src/config/default/cstartup.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/cstartup.o.d" "${OBJECTDIR}/_ext/1171490990/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1171490990/cstartup.o: ../src/config/default/cstartup.S  .generated_files/flags/default/464268bd7f2ccd2dd3a006c0c95b4112edd64673 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/419ce38953f95f2c46ff16e76ef38d276ea75ef6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/82496a9607776c06d928333e7756edc72b263c4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/default/186264ed8e9ceb3fa7b9e65c6f2cb3edd59ca58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ../src/config/default/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/default/aa02d4dfb296a3dd5c868078721e07cdb202cb5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1992993867/ws_touch_display.o: ../src/config/default/gfx/display/ws_touch_display.c  .generated_files/flags/default/b10080bcb3963aa3c4d5fc6ea2255377afd2f769 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1992993867" 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d" -o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ../src/config/default/gfx/display/ws_touch_display.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/614491576/plib_dsi.o: ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c  .generated_files/flags/default/c82a17f5ecfe9886d331bc363624a984dd8caebc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/614491576" 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/614491576/plib_dsi.o.d" -o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1319235455/gfx_driver.o: ../src/config/default/gfx/driver/gfx_driver.c  .generated_files/flags/default/83172bf4a9819e9449fca2922499b072162976b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1319235455" 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ../src/config/default/gfx/driver/gfx_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c  .generated_files/flags/default/5206427a7385385bfdddde770eb41b267fdc695f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/119635701" 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d" -o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/412764825/plib_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c  .generated_files/flags/default/d1dd3c46eb9e03bdace26b92ebcc64d75774b727 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/412764825" 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d" -o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_utils.o: ../src/config/default/gfx/legato/common/legato_utils.c  .generated_files/flags/default/fff115091d3dedd88cc196a7318477ae240405b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ../src/config/default/gfx/legato/common/legato_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_blend.o: ../src/config/default/gfx/legato/common/legato_color_blend.c  .generated_files/flags/default/e4c3f05452f5ebc3b1d514462723caafe321378a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ../src/config/default/gfx/legato/common/legato_color_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color.o: ../src/config/default/gfx/legato/common/legato_color.c  .generated_files/flags/default/34407effe1ea399059bec3aedfbe06f5fb32882b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color.o ../src/config/default/gfx/legato/common/legato_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o: ../src/config/default/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/default/ec104034dbb10f252a0fa9f598860643e33bb464 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ../src/config/default/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o: ../src/config/default/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/default/d2da724abd6185694f0abaa76a8a278cba818b69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ../src/config/default/gfx/legato/common/legato_color_lerp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_error.o: ../src/config/default/gfx/legato/common/legato_error.c  .generated_files/flags/default/2d42fda294e71abbbe8d536d869a87837a6ecb53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_error.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_error.o ../src/config/default/gfx/legato/common/legato_error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_math.o: ../src/config/default/gfx/legato/common/legato_math.c  .generated_files/flags/default/7deb041e1ca0d1b739656577efd6b01348bc48f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_math.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_math.o ../src/config/default/gfx/legato/common/legato_math.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_value.o: ../src/config/default/gfx/legato/common/legato_color_value.c  .generated_files/flags/default/f5bb25562ff850db730002cbb082b5bef21d07c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ../src/config/default/gfx/legato/common/legato_color_value.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_convert.o: ../src/config/default/gfx/legato/common/legato_color_convert.c  .generated_files/flags/default/148228ba3f526d28cb3bb8d5b0b6c5af372a1c9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ../src/config/default/gfx/legato/common/legato_color_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_rect.o: ../src/config/default/gfx/legato/common/legato_rect.c  .generated_files/flags/default/8458c780b37f94279de0618948999cacdc5a4fee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ../src/config/default/gfx/legato/common/legato_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_stream.o: ../src/config/default/gfx/legato/core/legato_stream.c  .generated_files/flags/default/9647633ef29be6ec8d84b55be98d69d646b833c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_stream.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_stream.o ../src/config/default/gfx/legato/core/legato_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_state.o: ../src/config/default/gfx/legato/core/legato_state.c  .generated_files/flags/default/3e99e790c2c0d1b2bcdfce92dc144f76dcebbaa1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_state.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_state.o ../src/config/default/gfx/legato/core/legato_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_scheme.o: ../src/config/default/gfx/legato/core/legato_scheme.c  .generated_files/flags/default/407111ff9344bbb8672d2bbd18ebaad199771bbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ../src/config/default/gfx/legato/core/legato_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_input.o: ../src/config/default/gfx/legato/core/legato_input.c  .generated_files/flags/default/585dfdb5f08a71b06e8d2f93d60cb196040e26bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_input.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_input.o ../src/config/default/gfx/legato/core/legato_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_event.o: ../src/config/default/gfx/legato/core/legato_event.c  .generated_files/flags/default/ce2a29667f62de5c8c60a5b85e34a958566fa5a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_event.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_event.o ../src/config/default/gfx/legato/core/legato_event.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_rectarray.o: ../src/config/default/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/default/339df2fefba7c3a7f09d592705e791fd463c4a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ../src/config/default/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_list.o: ../src/config/default/gfx/legato/datastructure/legato_list.c  .generated_files/flags/default/36b875d3bf4a49b5ad5044aab3a0ec509e05a759 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_list.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_list.o ../src/config/default/gfx/legato/datastructure/legato_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_array.o: ../src/config/default/gfx/legato/datastructure/legato_array.c  .generated_files/flags/default/121ca91103b03cf82035e28abf330bf75ba983b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_array.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_array.o ../src/config/default/gfx/legato/datastructure/legato_array.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/default/bf73326b16833fccc69680aa7bcc512cb8313c74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/default/c160fb8a68185b2f27468281e4cb0a9c2332211b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_font.o: ../src/config/default/gfx/legato/font/legato_font.c  .generated_files/flags/default/ed6ba0019da904a7fdbde3af6fa861a6d7692bac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_font.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_font.o ../src/config/default/gfx/legato/font/legato_font.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o: ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/default/a345be6c0af340e5fc2964c64c4c1080394f6bd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o: ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/default/1e6f08f28766ab4cdef399a9bfaad68be047523 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1494086919" 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/930643953/le_gen_images.o: ../src/config/default/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/default/ffd9880460c6b374049c9016a076b708a627b86d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/930643953" 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/930643953/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ../src/config/default/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c  .generated_files/flags/default/29c4cebf753c63232a9bdd3eb5292f116365282f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c  .generated_files/flags/default/332e75c2f59e4b1211c133244e074980de9ee19c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o: ../src/config/default/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/default/7b80b0ccbc30a7f092fdff58a3e57e1dd363d44b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ../src/config/default/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o: ../src/config/default/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/default/c0067b7b24bebc934d9dfcdcf82a0c54a22386d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ../src/config/default/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_init.o: ../src/config/default/gfx/legato/generated/le_gen_init.c  .generated_files/flags/default/bd387d5256cd1c6fe58f862ca832ac906d38cc1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ../src/config/default/gfx/legato/generated/le_gen_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o: ../src/config/default/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/default/8309e970a4d78334eafbdd7814ced3165cfd2f95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ../src/config/default/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o: ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/default/cd3f313e16e7e5d65e8df277df4fc89c37e34134 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/default/b7dc2a7b5d28d7d46a77b75fc229779e2eb409c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/jidctint.o: ../src/config/default/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/default/33f0383c2917347b33559847a90754b19294a2e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/jidctint.o.d" -o ${OBJECTDIR}/_ext/1395618758/jidctint.o ../src/config/default/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/default/f60342c89edebf24e1fc8a7376a15a4255697974 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/default/998287c98113b7265d3faed8e1de3fc0b27659c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/default/4e95d95cf828bd17195a39d382e7121797de58ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/default/2ab4ff8c3bc712a8bc771a86bddf2fb01e8edc49 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o: ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/default/138453353d7d86333cc9da1ba1c5839e91309a68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/lodepng.o: ../src/config/default/gfx/legato/image/png/lodepng.c  .generated_files/flags/default/296563e7bd9e7f25c25304f603359665761c273b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/lodepng.o.d" -o ${OBJECTDIR}/_ext/460667659/lodepng.o ../src/config/default/gfx/legato/image/png/lodepng.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/default/56cc87b4e445ccbf73cb247fc2317321153c4a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/default/bbca4f7acb7a5e108c6e7945ffd8ab43c05d560e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/default/5769aa15e20aee8ea3721cb831938a70ab140bc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/default/1f5716577d73154a1822785b5fd8ed0aaccf148 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/default/dbf3f41d2a9db75eb24b0207d6a9c13831b6f0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/default/b16a9790298429efa3340b47e471c793f750e7a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/default/85a4bef570969f332945371a662d8ad06044f593 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/default/fd3c1d15150319387d8530f5631e552501b8b95d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/default/7af09a7275109284f85751dd27db5f8152be3bfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/default/b1b986b20c170aa983658f4184c4dc61e98a059a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/default/66a4f976992d87c18941d65263bf6b5436a3610d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/default/fb14b4599aaa25ef399695a8eb61bc3e2f21828a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/default/a889e6b187b8bd2f759342af92ea5ad8d19710ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/default/e939e39dc304a5fb6cf570863eb84c4a6ed36be4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/default/9fb4123c728f9eaa0e83e16cd44d5e25dd2f81be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image.o: ../src/config/default/gfx/legato/image/legato_image.c  .generated_files/flags/default/9564f6c5652375018e919bd006932598e9d03cee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image.o ../src/config/default/gfx/legato/image/legato_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image_utils.o: ../src/config/default/gfx/legato/image/legato_image_utils.c  .generated_files/flags/default/7ad6e90fd155285ad8aa15b4438efc9d4cf3277 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ../src/config/default/gfx/legato/image/legato_image_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_palette.o: ../src/config/default/gfx/legato/image/legato_palette.c  .generated_files/flags/default/3073a89dc7450ebbc6c99043832b0df667c89821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_palette.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ../src/config/default/gfx/legato/image/legato_palette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o: ../src/config/default/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/default/2b7e7471f80dd5a05a083ce462fdc9d9dfaf06a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ../src/config/default/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_memory.o: ../src/config/default/gfx/legato/memory/legato_memory.c  .generated_files/flags/default/1004b42df26e380b31ef9f63fdff0729a0bdc6af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_memory.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ../src/config/default/gfx/legato/memory/legato_memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_variableheap.o: ../src/config/default/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/default/88279f55f32c55460e8d350fa2e4d0f846cff247 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ../src/config/default/gfx/legato/memory/legato_variableheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_line.o: ../src/config/default/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/default/9b7fabc249cf34250896796c8bbccaa7b9013070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ../src/config/default/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_gpu.o: ../src/config/default/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/default/25ffa2070379d0f997ac29c2865d781ff5fdfb3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ../src/config/default/gfx/legato/renderer/legato_gpu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_arc.o: ../src/config/default/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/default/233f434df567d879d03e7c2cd1bd2fabc1efd92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ../src/config/default/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_rect.o: ../src/config/default/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/default/c13c5b2ad5f98141b82ddc9b23f0eb20a610880 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ../src/config/default/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw.o: ../src/config/default/gfx/legato/renderer/legato_draw.c  .generated_files/flags/default/14f2335e6debd182e1db2d4bb6f0635b7588d2da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw.o ../src/config/default/gfx/legato/renderer/legato_draw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_renderer.o: ../src/config/default/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/default/942ef7fbf93ae7615536b7ab92df91dff0a972fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ../src/config/default/gfx/legato/renderer/legato_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o: ../src/config/default/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/default/fc20f509dec9b2cd090b178cc49ba4b7915c3963 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ../src/config/default/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringutils.o: ../src/config/default/gfx/legato/string/legato_stringutils.c  .generated_files/flags/default/bf18d58c398df2c4a4f896438230d9c744bb8289 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ../src/config/default/gfx/legato/string/legato_stringutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_tablestring.o: ../src/config/default/gfx/legato/string/legato_tablestring.c  .generated_files/flags/default/11804b7645ddf2082a4d8f9164fb5bac67fb5ff4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ../src/config/default/gfx/legato/string/legato_tablestring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o: ../src/config/default/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/default/6dbe65ac94a0f2ded715e036caf3f08e52f27526 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ../src/config/default/gfx/legato/string/legato_string_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o: ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/default/dcb0207f70ec6846c54b494bc61c0ca9892696c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string.o: ../src/config/default/gfx/legato/string/legato_string.c  .generated_files/flags/default/c322346724b02979007db1569233983788068440 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string.o ../src/config/default/gfx/legato/string/legato_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringtable.o: ../src/config/default/gfx/legato/string/legato_stringtable.c  .generated_files/flags/default/cf6e44e0015af12e36076e61172c308a054e5ec7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ../src/config/default/gfx/legato/string/legato_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o: ../src/config/default/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/default/aca85a27889bf07fce87f761c553189ee07dca08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ../src/config/default/gfx/legato/string/legato_fixedstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o: ../src/config/default/gfx/legato/vector/legato_vector_kernel.c  .generated_files/flags/default/a9933c4cd1d103be7df99587ee3d0accd3061f8d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ../src/config/default/gfx/legato/vector/legato_vector_kernel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_rectf.o: ../src/config/default/gfx/legato/vector/legato_rectf.c  .generated_files/flags/default/abe1261827421fc8fd56ae3c18ca151f47f6295c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_rectf.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ../src/config/default/gfx/legato/vector/legato_rectf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c  .generated_files/flags/default/3b3167de7d33d6a6f0914d509ec2b55ae135bcbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_i16.o: ../src/config/default/gfx/legato/core/legato_real_i16.c  .generated_files/flags/default/b79d3ba74a9a8237983b37a303b5604a349ada3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ../src/config/default/gfx/legato/core/legato_real_i16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c  .generated_files/flags/default/1ef7ed2ea3c124ed975c6ec151cedd3053412220 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_vline.o: ../src/config/default/gfx/legato/vector/legato_vector_vline.c  .generated_files/flags/default/ec52e5ea83716667b058fec0f67a4c23cbf4f42b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ../src/config/default/gfx/legato/vector/legato_vector_vline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_point.o: ../src/config/default/gfx/legato/vector/legato_point.c  .generated_files/flags/default/cdc1e67115bb16a5924508738a575133c40e3e3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_point.o ../src/config/default/gfx/legato/vector/legato_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector2.o: ../src/config/default/gfx/legato/vector/legato_vector2.c  .generated_files/flags/default/c73ea7b4b4c9f44053856376232516035076e310 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector2.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ../src/config/default/gfx/legato/vector/legato_vector2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_obb.o: ../src/config/default/gfx/legato/vector/legato_obb.c  .generated_files/flags/default/d3311ac22f0cf83bf7eb667ebd7614d3c16782c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_obb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_obb.o ../src/config/default/gfx/legato/vector/legato_obb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_plane.o: ../src/config/default/gfx/legato/vector/legato_plane.c  .generated_files/flags/default/210e810c9090b734710aa2a3c100981f9adcd88f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_plane.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_plane.o ../src/config/default/gfx/legato/vector/legato_plane.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c  .generated_files/flags/default/dd9eb7cf613dbce86550224ee7dd1ebab936e64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_linef.o: ../src/config/default/gfx/legato/vector/legato_linef.c  .generated_files/flags/default/783d00f8215fd5e3cfc603a585a362e348a6e5ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_linef.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_linef.o ../src/config/default/gfx/legato/vector/legato_linef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aabb.o: ../src/config/default/gfx/legato/vector/legato_aabb.c  .generated_files/flags/default/cd971bfb9cdbb60880a4ce0bd8c92e0c90b5280e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aabb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ../src/config/default/gfx/legato/vector/legato_aabb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aa.o: ../src/config/default/gfx/legato/vector/legato_aa.c  .generated_files/flags/default/d073b2be0f04bb339e3c21e845db70a7897360e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aa.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aa.o ../src/config/default/gfx/legato/vector/legato_aa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_line.o: ../src/config/default/gfx/legato/vector/legato_vector_line.c  .generated_files/flags/default/d8991d41aed807251d3284b49675ab4a2b77ace3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ../src/config/default/gfx/legato/vector/legato_vector_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c  .generated_files/flags/default/7cb28d6c0a263e7e46c9afd278facb1b24c1647b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_hline.o: ../src/config/default/gfx/legato/vector/legato_vector_hline.c  .generated_files/flags/default/2ae4223296d4857412480962bcb5def418879b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ../src/config/default/gfx/legato/vector/legato_vector_hline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c  .generated_files/flags/default/ca7201750626af79fc3a5b8da0022e18d5809d3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_u8.o: ../src/config/default/gfx/legato/core/legato_real_u8.c  .generated_files/flags/default/7ffc7ed56c3dddef71896b6d78cff573356cb69e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ../src/config/default/gfx/legato/core/legato_real_u8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_point.o: ../src/config/default/gfx/legato/vector/legato_vector_point.c  .generated_files/flags/default/fd18990be4901b9048e5174d26c34a066e344237 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ../src/config/default/gfx/legato/vector/legato_vector_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/default/9edb0cceea38a8f2b16d08ecd8004dc07389799e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/default/7c3f9ce717b10f7e385d7ef196b9e29406846dec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/default/2edbb8d02990fcd556cce5085f0e4607dba7c83d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/default/69afdcb7b028dfb88ba6830584ab5973b9f6934e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/default/db749a740e6169a2465dd46f5ec6842d27377ec2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ../src/config/default/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/default/b4d0981c143423f475f8716b951c3e9c3ae86f61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/default/6614d6d8e119497d1192dc3c54c8d7a3eae652f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/default/fde68e8ae3727b5bfc955c2daddaf21bb80afcbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/default/f999d3737d7ff5df38fdeba62cf5ff0911651a4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/default/18d890aa700b9b1073b7b4e0f6d4d585c15f0bf6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/ff945c849e06e980e66df556402f5c13ae0f729 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/default/e84cfce63f9ed368d494a7dcaed57aa006b8916a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/default/cb2973fa04f47f908869389301bb0bd8e9b6a1ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/default/84fc3a232abf86b80ab09490d4c57e7211e229a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/default/5d1f1dd4a61c59c396d07fd80863b2e77c9daa8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/default/9b1ceab1fe53d4283a85c31eb49d3f43b48bd46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/default/1fc03f9baed1e464bd9b667bc1776a746fa8730b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/default/5d66eeedd7bd199e53e78c2983ebdffe739f0c73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/default/20886f11825767913aec7c7091fc0017173f0875 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/default/bce6be6417b2e404306b6e68225d9e5dce004d34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/default/7dedde812c807ac33368074a7e79415fe4b64885 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ../src/config/default/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/default/adb4fab382ce439479a6ed854e640c0d62442d90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/default/e242e8ce93a7891309179ce185b4196cb04d2ac1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/default/80eed24e8e1a3dbda10f184b963f0b4d2f784ee1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/default/bb2ddb7d606139d156db4b160a90ff98aff1c2a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/default/9ed1de8ed48f36b22cbb14adabbae6454186b1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/default/952fc0a2e5e0ffc0814a61f39bcf5784a0c8fa6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/default/a4f3de8c309ac368743eef1b84654eb9f3aba57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/default/ea92a46b1fcff2ad07d8e1d745cc7c0c48a7bb0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/default/4231e16fc153f1ca4985b9b5cd8973795ed78790 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/default/f55bb70c789d0a29d0f9121e93ee3c11a6f6d6d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ../src/config/default/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/default/4a770df6ea398665d465f65387270d36e66c63c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/default/7e04cc52b4e0002057f33aa701c4a0ebad1679b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/default/5990d119315ec05593ee55901af6e110b06d606 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ../src/config/default/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/default/28d559c194b1eca7acce44f28650d52fe2164686 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/default/6115f9d81d48d7eb392d76cdba6ff652c155515d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/default/10d418fbc978ecae97ba41f4f896ade02da279e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ../src/config/default/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/default/bfc51fcdeeaf08f63feb0e8ae0ac781a11fecb42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/default/69d3f39d82b55d4903859763355a486ddfa9737e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/default/b42dc48bbbf8a78f6120ea501acbe863c34c2265 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/default/ee9d0e41873d6fb969a17e4c03507e1adf0d6a2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/default/a1bb2c7c84768e98c2bcb705bac3016161094dd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/default/3822ce8116718f1a697301a020e5bb4c7f35d4a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/default/f613773f92421d27253c5813368ed1c2e2741aef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c  .generated_files/flags/default/76fc72c7f181d37ea67f2f4f940ae9e39b1d8d22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/default/a617c556ae5e9c2ed630603a1c24848ca163b7ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/default/19b731aafe0017a1061d5b6c9568377533b29d7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/default/2794f760d94608393236823d0f724b6768bc7a48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/default/21afb4c9928dc277a1d8719ee62601c0adeae7ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/default/13297a479dd1736d08ec18fd4e0ae946beabbf17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/default/430bedb89c69c097cb04ac1195c6d8a32f6f8a14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/default/8ea794a59a450d72167d14c396adcd81d8a4d227 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/default/fe99efbf8d34956bf2f60181344b277205da4e67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/default/86bf92ece180891e75bfe35ade4caea4a9eac863 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/default/3ed618d58b4cbcb5120d9c77489fb4d0753d26f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/default/792ead15f422b656408bb50387af5611a6a592bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/default/83c21fa9908bd4cd8a441db6131f5470b61e48a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/default/9578e9781de6fdb06d300982c6a00597ff7e7f77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/default/194876c235c2534d41450b737f7dcc286dc69e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/default/a7f6e9b3b0b070321891958c1e48ae9c00a34f1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/default/d9531fee344186997a0e1e398e20bbb46db5a3f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/default/d18d05778eab646323364470793019bd0152ca9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ../src/config/default/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/default/bb8f762e3cb80d6affc200ab5159d8109ace5ded .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget.o: ../src/config/default/gfx/legato/widget/legato_widget.c  .generated_files/flags/default/5131eb2d6be1427add1f23d732069782c4ed6012 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget.o ../src/config/default/gfx/legato/widget/legato_widget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_editwidget.o: ../src/config/default/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/default/cc17c8883704b95dbdcaa28d3c45565bd0665ca0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ../src/config/default/gfx/legato/widget/legato_editwidget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/default/238968bd903dd5d8d3ea561ba5bc72c7d8a2fc92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/6549e0184236a7915197dfadae4cb8d460047cbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865171381/plib_dwdt.o: ../src/config/default/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/default/f32b55f7d80168bc8ddbf3d80ad5ec6da2b53e6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865171381" 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ../src/config/default/peripheral/dwdt/plib_dwdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o: ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c  .generated_files/flags/default/6fcc110f6508179c10cdb032fc1319a3858e7054 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/429438372" 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d" -o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o: ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c  .generated_files/flags/default/4b53b0981a561e6a6eedb8fd87f389664fb240ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1818436620" 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d" -o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169263/plib_gic.o: ../src/config/default/peripheral/gic/plib_gic.c  .generated_files/flags/default/eec1821a793b18b78f4b208d789d3adde5b06841 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169263" 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60169263/plib_gic.o.d" -o ${OBJECTDIR}/_ext/60169263/plib_gic.o ../src/config/default/peripheral/gic/plib_gic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60175171/plib_mmu.o: ../src/config/default/peripheral/mmu/plib_mmu.c  .generated_files/flags/default/f5a0d6e40773f0fcbd8a8bfff7d378c53a7ea943 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60175171" 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60175171/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ../src/config/default/peripheral/mmu/plib_mmu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/97c3b7796cb0ec66554677b80e1b5e109bbe80ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o: ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c  .generated_files/flags/default/d9ffe47f632dc47903487f56a2437594d39a63c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1999033280" 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d" -o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/9d99de36e8572eacb9fc5c015441810640793f54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/867846ec0fdd6054cc348272b3b96cfd44424d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/a1843cf5b7cfa39e45864ab6c79b34c47ec1229e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ff.o: ../src/config/default/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/default/9fbcd49c46c52edf2d50f6d673286529b866d6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ff.o.d" -o ${OBJECTDIR}/_ext/411819097/ff.o ../src/config/default/system/fs/fat_fs/file_system/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ffunicode.o: ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/default/1cc111bbbb8b518d0d915c4f04511bc2f1b65230 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ffunicode.o.d" -o ${OBJECTDIR}/_ext/411819097/ffunicode.o ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565198302/diskio.o: ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/default/a9ac3733d85302bb54b16d0a5208691bb1d13b7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565198302" 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565198302/diskio.o.d" -o ${OBJECTDIR}/_ext/565198302/diskio.o ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/flags/default/6d78793820e0dc3de1b70644d8efa8bb696f73d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o: ../src/config/default/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/default/ec7cf79be25a36ff37fb58a9e1348e707b31ef6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ../src/config/default/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/default/1c4bbddc2fb3364917a5cc6da5b95a2f19f8dc77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input_listener.o: ../src/config/default/system/input/sys_input_listener.c  .generated_files/flags/default/76618084c44229b341922df9ecff47e9831fb558 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ../src/config/default/system/input/sys_input_listener.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input.o: ../src/config/default/system/input/sys_input.c  .generated_files/flags/default/a3dfcc73947ecea14ebd417b76d1bf89d9597478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input.o ../src/config/default/system/input/sys_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/6a178f3533d0a9cdaebe328921f10f8373fb2c95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/47de5eecb9371d20e575dcb32341e3a8086a96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/86a4a283e901041d293dc994466e69a44d729174 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/6d632a64f8675f381e9ec5af9c6fced9e81584aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/5492c32f9a09fe3fa12fead58460eccaa306a3b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/fault_handlers.o: ../src/config/default/fault_handlers.c  .generated_files/flags/default/ba574633d162f1f5d50dcbd3bcd41b75a190d2a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ../src/config/default/fault_handlers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jcomapi.o: ../src/third_party/jpeg-6b/jcomapi.c  .generated_files/flags/default/aa904edc22e529f345a7484e8e5c08f6bcd3cc54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jcomapi.o.d" -o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ../src/third_party/jpeg-6b/jcomapi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapimin.o: ../src/third_party/jpeg-6b/jdapimin.c  .generated_files/flags/default/f4b5e16adfb0519e82bef3d44831e0edf6b2e2c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapimin.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ../src/third_party/jpeg-6b/jdapimin.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapistd.o: ../src/third_party/jpeg-6b/jdapistd.c  .generated_files/flags/default/f4fbe8caeb30185a0f20ac7321700d1bae635d9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapistd.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ../src/third_party/jpeg-6b/jdapistd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdatasrc.o: ../src/third_party/jpeg-6b/jdatasrc.c  .generated_files/flags/default/668d649030274d71b9a3ce5830344e4f99df6c9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ../src/third_party/jpeg-6b/jdatasrc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcoefct.o: ../src/third_party/jpeg-6b/jdcoefct.c  .generated_files/flags/default/f7241349f88beff3e638184d27f9d6f2024ef73b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ../src/third_party/jpeg-6b/jdcoefct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcolor.o: ../src/third_party/jpeg-6b/jdcolor.c  .generated_files/flags/default/31f3760e2d8ab40a5b17534c92374525f931dff0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcolor.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ../src/third_party/jpeg-6b/jdcolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jddctmgr.o: ../src/third_party/jpeg-6b/jddctmgr.c  .generated_files/flags/default/7b0151ed56ad9b9b73f27883f6e8f948cfaa76dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ../src/third_party/jpeg-6b/jddctmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdhuff.o: ../src/third_party/jpeg-6b/jdhuff.c  .generated_files/flags/default/a7edafd6b8f37b70d66c2601efa1c50bb02635da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdhuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ../src/third_party/jpeg-6b/jdhuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdinput.o: ../src/third_party/jpeg-6b/jdinput.c  .generated_files/flags/default/bab38f766c9b278c3f2ab8144672221274be10af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdinput.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdinput.o ../src/third_party/jpeg-6b/jdinput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmainct.o: ../src/third_party/jpeg-6b/jdmainct.c  .generated_files/flags/default/e50e64fcb13b03325e741dcd928f163ab303bb1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmainct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ../src/third_party/jpeg-6b/jdmainct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmarker.o: ../src/third_party/jpeg-6b/jdmarker.c  .generated_files/flags/default/c0f85b71c0548d62868b61adf323cf449f76562b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmarker.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ../src/third_party/jpeg-6b/jdmarker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmaster.o: ../src/third_party/jpeg-6b/jdmaster.c  .generated_files/flags/default/c87bec2c30dcbda40a234faf2efa4e41c0cf2ea7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmaster.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ../src/third_party/jpeg-6b/jdmaster.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmerge.o: ../src/third_party/jpeg-6b/jdmerge.c  .generated_files/flags/default/2e8a4507380023ea6da6fd408f15c6626c078b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmerge.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ../src/third_party/jpeg-6b/jdmerge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdphuff.o: ../src/third_party/jpeg-6b/jdphuff.c  .generated_files/flags/default/9943082fa473361e22a3d4c34559a8566d8068e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdphuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ../src/third_party/jpeg-6b/jdphuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdpostct.o: ../src/third_party/jpeg-6b/jdpostct.c  .generated_files/flags/default/106aba35b4fad2220042f6294cc34efaddb756bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdpostct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ../src/third_party/jpeg-6b/jdpostct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdsample.o: ../src/third_party/jpeg-6b/jdsample.c  .generated_files/flags/default/d3eabb7fa96ef4c2835203c208ae1eb783a779f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdsample.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdsample.o ../src/third_party/jpeg-6b/jdsample.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdtrans.o: ../src/third_party/jpeg-6b/jdtrans.c  .generated_files/flags/default/78eeb6174ee18e28cd91466e456eb239704b312a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdtrans.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ../src/third_party/jpeg-6b/jdtrans.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jerror.o: ../src/third_party/jpeg-6b/jerror.c  .generated_files/flags/default/9f5dbb814ec5c51be2169eead3cf3ffaa69037b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jerror.o.d" -o ${OBJECTDIR}/_ext/1854554250/jerror.o ../src/third_party/jpeg-6b/jerror.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctflt.o: ../src/third_party/jpeg-6b/jidctflt.c  .generated_files/flags/default/6f67f0365cab4422e4fcfaa3352742d5cbafb1e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctflt.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ../src/third_party/jpeg-6b/jidctflt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctfst.o: ../src/third_party/jpeg-6b/jidctfst.c  .generated_files/flags/default/2f4bd01059ecc408a9a5998fc6d0c6a471ef2120 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctfst.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ../src/third_party/jpeg-6b/jidctfst.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctint.o: ../src/third_party/jpeg-6b/jidctint.c  .generated_files/flags/default/13d5c20304c61f50ebe10fb773954c56184254a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctint.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctint.o ../src/third_party/jpeg-6b/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctred.o: ../src/third_party/jpeg-6b/jidctred.c  .generated_files/flags/default/f04dea19a18487ea153971b616ad9ef8315fda4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctred.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctred.o ../src/third_party/jpeg-6b/jidctred.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemmgr.o: ../src/third_party/jpeg-6b/jmemmgr.c  .generated_files/flags/default/ae16c22a580cb2129caff13b36c9f8a339a63d48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ../src/third_party/jpeg-6b/jmemmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemnobs.o: ../src/third_party/jpeg-6b/jmemnobs.c  .generated_files/flags/default/d5af2f66fe121bc09a4efc6e1c121e3a6a66162c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ../src/third_party/jpeg-6b/jmemnobs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant1.o: ../src/third_party/jpeg-6b/jquant1.c  .generated_files/flags/default/46ebbdfb2a013eb50fac973cf53bd48cebe7119b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant1.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant1.o ../src/third_party/jpeg-6b/jquant1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant2.o: ../src/third_party/jpeg-6b/jquant2.c  .generated_files/flags/default/b5a4194bbe7777bdbae847f3741d943d1dbaef57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant2.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant2.o ../src/third_party/jpeg-6b/jquant2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jutils.o: ../src/third_party/jpeg-6b/jutils.c  .generated_files/flags/default/59987c7dc4a845dfdc1fcfbcf025da193bc9fd6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jutils.o.d" -o ${OBJECTDIR}/_ext/1854554250/jutils.o ../src/third_party/jpeg-6b/jutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/e92cd1b898ea0e15ba0a2c737ff47e87fec25796 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/825ffbe0c014bd1d5508a93b178f3e2324c44076 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_help.o: ../src/app_screen_help.c  .generated_files/flags/default/75727ce31fa4ae712092d79d1ba17a8fbe386e37 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ../src/app_screen_help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_home.o: ../src/app_screen_home.c  .generated_files/flags/default/c21d8d504035d90e8c14715691ea6791c1dcf05a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ../src/app_screen_home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/djpeg.o: ../src/djpeg.c  .generated_files/flags/default/e8835a189001eea165f6293559ee084d586067f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/djpeg.o.d" -o ${OBJECTDIR}/_ext/1360937237/djpeg.o ../src/djpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/h3_string.o: ../src/h3_string.c  .generated_files/flags/default/d71425046e528960e5655415a78dc580bda24a3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/h3_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/h3_string.o.d" -o ${OBJECTDIR}/_ext/1360937237/h3_string.o ../src/h3_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/c521f2698f34d00f8638299bf424706004758049 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/flags/default/6000a1225ed5a10b57dff4d7bbbb8481603d50df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc.c  .generated_files/flags/default/c9d4c983e802bc8d8b4450cbd632c67c8f1aba81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc.o ../src/config/default/driver/sdmmc/src/drv_sdmmc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o: ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c  .generated_files/flags/default/943669e8c5ce8fde560634fd2e2be21c449be940 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20954303" 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o.d" -o ${OBJECTDIR}/_ext/20954303/drv_sdmmc_file_system.o ../src/config/default/driver/sdmmc/src/drv_sdmmc_file_system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1992993867/ws_touch_display.o: ../src/config/default/gfx/display/ws_touch_display.c  .generated_files/flags/default/8be3819254d48b01aa64b719dd0d1c086ac34a4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1992993867" 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1992993867/ws_touch_display.o.d" -o ${OBJECTDIR}/_ext/1992993867/ws_touch_display.o ../src/config/default/gfx/display/ws_touch_display.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/614491576/plib_dsi.o: ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c  .generated_files/flags/default/3013e1c3e8769d0d64a1608a8585c793f04324b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/614491576" 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o.d 
	@${RM} ${OBJECTDIR}/_ext/614491576/plib_dsi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/614491576/plib_dsi.o.d" -o ${OBJECTDIR}/_ext/614491576/plib_dsi.o ../src/config/default/gfx/driver/controller/xlcdc/bridge/dsi/plib_dsi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1319235455/gfx_driver.o: ../src/config/default/gfx/driver/gfx_driver.c  .generated_files/flags/default/c445e2ec346faf978d4282c3ec09ba454e656bd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1319235455" 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1319235455/gfx_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1319235455/gfx_driver.o.d" -o ${OBJECTDIR}/_ext/1319235455/gfx_driver.o ../src/config/default/gfx/driver/gfx_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c  .generated_files/flags/default/5a0644971d67398fb2143b889b5a429965c3dcdd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/119635701" 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o.d" -o ${OBJECTDIR}/_ext/119635701/drv_gfx_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/drv_gfx_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/412764825/plib_xlcdc.o: ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c  .generated_files/flags/default/70b5559ac52a256d8c2f45b714ade3cd798884a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/412764825" 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/412764825/plib_xlcdc.o.d" -o ${OBJECTDIR}/_ext/412764825/plib_xlcdc.o ../src/config/default/gfx/driver/controller/xlcdc/plib/plib_xlcdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_utils.o: ../src/config/default/gfx/legato/common/legato_utils.c  .generated_files/flags/default/980548202e6b1673bad190436ca480d4174e351f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_utils.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_utils.o ../src/config/default/gfx/legato/common/legato_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_blend.o: ../src/config/default/gfx/legato/common/legato_color_blend.c  .generated_files/flags/default/37e3c48bd401ff2badab56eb38e953250288e8f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_blend.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_blend.o ../src/config/default/gfx/legato/common/legato_color_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color.o: ../src/config/default/gfx/legato/common/legato_color.c  .generated_files/flags/default/4d690dc0499a1897ed3a15a8ca3cea4f1c478a5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color.o ../src/config/default/gfx/legato/common/legato_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o: ../src/config/default/gfx/legato/common/legato_pixelbuffer.c  .generated_files/flags/default/6388e8244f86399a1569d34c5b08a2ea07ac6e57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_pixelbuffer.o ../src/config/default/gfx/legato/common/legato_pixelbuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o: ../src/config/default/gfx/legato/common/legato_color_lerp.c  .generated_files/flags/default/237822693d97c5495a8b22828b56dcfa51b9a994 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_lerp.o ../src/config/default/gfx/legato/common/legato_color_lerp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_error.o: ../src/config/default/gfx/legato/common/legato_error.c  .generated_files/flags/default/1de54784623cf036db9281663e8bf871667c3310 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_error.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_error.o ../src/config/default/gfx/legato/common/legato_error.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_math.o: ../src/config/default/gfx/legato/common/legato_math.c  .generated_files/flags/default/228b03c7b2a1303caa9b33810f30688d5483607e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_math.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_math.o ../src/config/default/gfx/legato/common/legato_math.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_value.o: ../src/config/default/gfx/legato/common/legato_color_value.c  .generated_files/flags/default/f412deb660f0f5157dee1e31853ac211e3aa7b1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_value.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_value.o ../src/config/default/gfx/legato/common/legato_color_value.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_color_convert.o: ../src/config/default/gfx/legato/common/legato_color_convert.c  .generated_files/flags/default/df110c28f7b4aa77871db5872b81e31cad638f53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_color_convert.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_color_convert.o ../src/config/default/gfx/legato/common/legato_color_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1510041067/legato_rect.o: ../src/config/default/gfx/legato/common/legato_rect.c  .generated_files/flags/default/2a0b0d6fde54a366e474dcbfdd200ae72760d45d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1510041067" 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1510041067/legato_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1510041067/legato_rect.o.d" -o ${OBJECTDIR}/_ext/1510041067/legato_rect.o ../src/config/default/gfx/legato/common/legato_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_stream.o: ../src/config/default/gfx/legato/core/legato_stream.c  .generated_files/flags/default/beba590e03e23147b82d5c3a043aae259013f00e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_stream.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_stream.o ../src/config/default/gfx/legato/core/legato_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_state.o: ../src/config/default/gfx/legato/core/legato_state.c  .generated_files/flags/default/5dbeab629fe79f7eae9916977aa106d057ad2a36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_state.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_state.o ../src/config/default/gfx/legato/core/legato_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_scheme.o: ../src/config/default/gfx/legato/core/legato_scheme.c  .generated_files/flags/default/e1a1fc55d330e7c8e41fc5acea4dcffed67a5fc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_scheme.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_scheme.o ../src/config/default/gfx/legato/core/legato_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_input.o: ../src/config/default/gfx/legato/core/legato_input.c  .generated_files/flags/default/2dade7aeab4fcfdc890c37160d7b5b70cd005c35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_input.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_input.o ../src/config/default/gfx/legato/core/legato_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_event.o: ../src/config/default/gfx/legato/core/legato_event.c  .generated_files/flags/default/5fc9d1b7a8e656cccd34bb428b1b215f1bdb112d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_event.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_event.o ../src/config/default/gfx/legato/core/legato_event.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_rectarray.o: ../src/config/default/gfx/legato/datastructure/legato_rectarray.c  .generated_files/flags/default/bdb60c42bb7b0d8d5d85220b5ada7bdc904a28a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_rectarray.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_rectarray.o ../src/config/default/gfx/legato/datastructure/legato_rectarray.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_list.o: ../src/config/default/gfx/legato/datastructure/legato_list.c  .generated_files/flags/default/d980923648edc1e5b7d572ba14f345a8131785b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_list.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_list.o ../src/config/default/gfx/legato/datastructure/legato_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2021927327/legato_array.o: ../src/config/default/gfx/legato/datastructure/legato_array.c  .generated_files/flags/default/2327e467c2205260a2f610d12002c7217aba3793 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2021927327" 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/2021927327/legato_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2021927327/legato_array.o.d" -o ${OBJECTDIR}/_ext/2021927327/legato_array.o ../src/config/default/gfx/legato/datastructure/legato_array.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c  .generated_files/flags/default/85b74f7f8db16bdea4c693573bff90b6fc94df3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono1.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o: ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c  .generated_files/flags/default/34fa25862983d6228f915df775190cefe8316cc7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_liberationmono8.o ../src/config/default/gfx/legato/font/legato_rasterfont_liberationmono8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_font.o: ../src/config/default/gfx/legato/font/legato_font.c  .generated_files/flags/default/708523498668cccdbf9e0bd9be69c2c53a9c284e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_font.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_font.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_font.o ../src/config/default/gfx/legato/font/legato_font.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o: ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c  .generated_files/flags/default/e96b357be0c6c153e57fe0d73ef14819c3b59c7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92372729" 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o.d" -o ${OBJECTDIR}/_ext/92372729/legato_rasterfont_stream.o ../src/config/default/gfx/legato/font/legato_rasterfont_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o: ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c  .generated_files/flags/default/1258460bd79b044b5c7f5db6adb0f58bd8a5511d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1494086919" 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o.d" -o ${OBJECTDIR}/_ext/1494086919/le_gen_fonts.o ../src/config/default/gfx/legato/generated/font/le_gen_fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/930643953/le_gen_images.o: ../src/config/default/gfx/legato/generated/image/le_gen_images.c  .generated_files/flags/default/7a2af4f1b4bc6f634b98b51394ded2cc08b3f7c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/930643953" 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o.d 
	@${RM} ${OBJECTDIR}/_ext/930643953/le_gen_images.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/930643953/le_gen_images.o.d" -o ${OBJECTDIR}/_ext/930643953/le_gen_images.o ../src/config/default/gfx/legato/generated/image/le_gen_images.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c  .generated_files/flags/default/2e0abd06f11e5358935c17e7326db558754bb12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Help.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o: ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c  .generated_files/flags/default/ad884500863481ce61f0a58d5be016997c316f07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937247594" 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d 
	@${RM} ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o.d" -o ${OBJECTDIR}/_ext/937247594/le_gen_screen_Home.o ../src/config/default/gfx/legato/generated/screen/le_gen_screen_Home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o: ../src/config/default/gfx/legato/generated/le_gen_scheme.c  .generated_files/flags/default/ac60affe525d66a5f30bf956ff2e40256b56c60f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_scheme.o ../src/config/default/gfx/legato/generated/le_gen_scheme.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o: ../src/config/default/gfx/legato/generated/le_gen_harmony.c  .generated_files/flags/default/d67a66eaa5193f0859e0469e672a52eeb9ee7e1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_harmony.o ../src/config/default/gfx/legato/generated/le_gen_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_init.o: ../src/config/default/gfx/legato/generated/le_gen_init.c  .generated_files/flags/default/c82f81276da1acc7cbac15fa3fe03c15e300e888 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_init.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_init.o ../src/config/default/gfx/legato/generated/le_gen_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o: ../src/config/default/gfx/legato/generated/le_gen_stringtable.c  .generated_files/flags/default/620205764c7a40997ebc5fb9cc95c3a1080bd597 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_stringtable.o ../src/config/default/gfx/legato/generated/le_gen_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o: ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c  .generated_files/flags/default/f634145c5c9eced0ccbc5de58d73dd6771641672 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1626882341" 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o.d" -o ${OBJECTDIR}/_ext/1626882341/le_gen_globalpalette.o ../src/config/default/gfx/legato/generated/le_gen_globalpalette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c  .generated_files/flags/default/e034ad854496ad845757f111a4177f983864fd4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/jidctint.o: ../src/config/default/gfx/legato/image/jpeg/jidctint.c  .generated_files/flags/default/ea2a16bc8e61334e747c89f1b8068cc146bbaa61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/jidctint.o.d" -o ${OBJECTDIR}/_ext/1395618758/jidctint.o ../src/config/default/gfx/legato/image/jpeg/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o: ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c  .generated_files/flags/default/8412d9b176bc01b48eafe2e96f88bdb9100a7bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395618758" 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o.d" -o ${OBJECTDIR}/_ext/1395618758/legato_imagedecoder_jpeg_common.o ../src/config/default/gfx/legato/image/jpeg/legato_imagedecoder_jpeg_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c  .generated_files/flags/default/a0d8cef45f1d9c17b187d2ee0f8035a2f0ed1442 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_stream.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c  .generated_files/flags/default/346d19dfe032fcc4c2414e9e2f89c1a9933c23ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o: ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c  .generated_files/flags/default/544d9beaa4c9709ebc84ee0ba11814c29d3396 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1395707457" 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o.d" -o ${OBJECTDIR}/_ext/1395707457/legato_imagedecoder_mono_read_internal.o ../src/config/default/gfx/legato/image/mono/legato_imagedecoder_mono_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o: ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c  .generated_files/flags/default/2621a3fad10019a19e61f4b37b3f8a00943bf038 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o.d" -o ${OBJECTDIR}/_ext/460667659/legato_imagedecoder_png.o ../src/config/default/gfx/legato/image/png/legato_imagedecoder_png.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460667659/lodepng.o: ../src/config/default/gfx/legato/image/png/lodepng.c  .generated_files/flags/default/71d93395a5817a874f6d62d290debb00ed059d48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460667659" 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/460667659/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460667659/lodepng.o.d" -o ${OBJECTDIR}/_ext/460667659/lodepng.o ../src/config/default/gfx/legato/image/png/lodepng.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c  .generated_files/flags/default/804e4e5b6e41be43ea7425f25755e7375eef3ff4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_convert.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_convert.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c  .generated_files/flags/default/55923299bbabcceda4b5e2fb6ecec3228d105b71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c  .generated_files/flags/default/9bacdf6f29c3a51f8b9cea840d07840fc8df326b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_scale.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_scale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c  .generated_files/flags/default/2ca3bfb24abacce1d61c99a73b5b2773267b1f75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rleindex.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rleindex.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c  .generated_files/flags/default/b4b442b2afe38b761c1de422372771d86e1a7d66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_setup.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_setup.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c  .generated_files/flags/default/bde755185a92696685b04b6bdc536962b16737eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_rotate.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_rotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c  .generated_files/flags/default/6c381863c496f814100c1fbaf67179021201fc11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_write.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_write.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c  .generated_files/flags/default/b8d1618d6a198dcc10ecfffc8f949fc01009c5a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_color.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_color.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c  .generated_files/flags/default/3dbde19a742a4ebc5be23a9b0ad368ed6f86caec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_mask.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_mask.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c  .generated_files/flags/default/9bbf7af5ad324b898cf167abe883fcb56f0ca856 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_internal.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_internal.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c  .generated_files/flags/default/7a72206fd150e6d415573802165797bb262de2c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_rlecolor.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_rlecolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c  .generated_files/flags/default/97ab0f077c2ed626658a32ef00b21ec715fd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_palette_stream.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_palette_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c  .generated_files/flags/default/e74e21e96bf54de6de6969bb2f05e25685874267 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_read_stream_index.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_read_stream_index.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c  .generated_files/flags/default/e27b68478c90c29da74478085729bfb10d573427 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o: ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c  .generated_files/flags/default/fa52c3000f5a274bdabd588d88f7f5d90e1287ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/460669194" 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o.d" -o ${OBJECTDIR}/_ext/460669194/legato_imagedecoder_raw_blend.o ../src/config/default/gfx/legato/image/raw/legato_imagedecoder_raw_blend.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image.o: ../src/config/default/gfx/legato/image/legato_image.c  .generated_files/flags/default/20e3aea12a3250cf0ec5cdfbc72358967cbf86ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image.o ../src/config/default/gfx/legato/image/legato_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_image_utils.o: ../src/config/default/gfx/legato/image/legato_image_utils.c  .generated_files/flags/default/74e6e198fa0f5c2ea4c7b2029f76168502960146 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_image_utils.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_image_utils.o ../src/config/default/gfx/legato/image/legato_image_utils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428714511/legato_palette.o: ../src/config/default/gfx/legato/image/legato_palette.c  .generated_files/flags/default/199f086d9431b8e06163a6cce3ee931b95ad3e0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1428714511" 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428714511/legato_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1428714511/legato_palette.o.d" -o ${OBJECTDIR}/_ext/1428714511/legato_palette.o ../src/config/default/gfx/legato/image/legato_palette.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o: ../src/config/default/gfx/legato/memory/legato_fixedheap.c  .generated_files/flags/default/bd0d2ffaba468d1bf41aa2454657cf88d6e707b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_fixedheap.o ../src/config/default/gfx/legato/memory/legato_fixedheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_memory.o: ../src/config/default/gfx/legato/memory/legato_memory.c  .generated_files/flags/default/7bc602deec36deae05f426aa3b6ce1d6f8b3e39a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_memory.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_memory.o ../src/config/default/gfx/legato/memory/legato_memory.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1232982741/legato_variableheap.o: ../src/config/default/gfx/legato/memory/legato_variableheap.c  .generated_files/flags/default/81d3e4cf26d2698f4f6359e6259d007832087926 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1232982741" 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1232982741/legato_variableheap.o.d" -o ${OBJECTDIR}/_ext/1232982741/legato_variableheap.o ../src/config/default/gfx/legato/memory/legato_variableheap.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_line.o: ../src/config/default/gfx/legato/renderer/legato_draw_line.c  .generated_files/flags/default/860944dd24d6f4e0f3be8dc49da8c9b216b04977 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_line.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_line.o ../src/config/default/gfx/legato/renderer/legato_draw_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_gpu.o: ../src/config/default/gfx/legato/renderer/legato_gpu.c  .generated_files/flags/default/5ca242e095b2b0f67693ee5662aab6301b519d70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_gpu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_gpu.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_gpu.o ../src/config/default/gfx/legato/renderer/legato_gpu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_arc.o: ../src/config/default/gfx/legato/renderer/legato_draw_arc.c  .generated_files/flags/default/f35298170efeda5d3d127ad9be1e04513a27a870 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_arc.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_arc.o ../src/config/default/gfx/legato/renderer/legato_draw_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw_rect.o: ../src/config/default/gfx/legato/renderer/legato_draw_rect.c  .generated_files/flags/default/846cac2679f32ef4664e132face5d12318b8e9bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw_rect.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw_rect.o ../src/config/default/gfx/legato/renderer/legato_draw_rect.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_draw.o: ../src/config/default/gfx/legato/renderer/legato_draw.c  .generated_files/flags/default/84104741193ee05f8c50e132764421bed4076ada .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_draw.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_draw.o ../src/config/default/gfx/legato/renderer/legato_draw.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/656756333/legato_renderer.o: ../src/config/default/gfx/legato/renderer/legato_renderer.c  .generated_files/flags/default/7b96f1f5c11d3f9f0e5406c7c753596eef3c898e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/656756333" 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/656756333/legato_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/656756333/legato_renderer.o.d" -o ${OBJECTDIR}/_ext/656756333/legato_renderer.o ../src/config/default/gfx/legato/renderer/legato_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o: ../src/config/default/gfx/legato/string/legato_dynamicstring.c  .generated_files/flags/default/588777f18c5c2d088fa341e2ab16666e4c0d09fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_dynamicstring.o ../src/config/default/gfx/legato/string/legato_dynamicstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringutils.o: ../src/config/default/gfx/legato/string/legato_stringutils.c  .generated_files/flags/default/e316b01be4244c99eb32ed7f208480a46ad80e76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringutils.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringutils.o ../src/config/default/gfx/legato/string/legato_stringutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_tablestring.o: ../src/config/default/gfx/legato/string/legato_tablestring.c  .generated_files/flags/default/d29b7f7289e888e4e3ddf31fd7abafd29b211c64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_tablestring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_tablestring.o ../src/config/default/gfx/legato/string/legato_tablestring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o: ../src/config/default/gfx/legato/string/legato_string_renderer.c  .generated_files/flags/default/bbfe6041546cc15f39b9d99d64b5a140baeed71d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer.o ../src/config/default/gfx/legato/string/legato_string_renderer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o: ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c  .generated_files/flags/default/f47647aa6c3bd60e1540a0f2b44e3e70d144c0b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string_renderer_stream.o ../src/config/default/gfx/legato/string/legato_string_renderer_stream.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_string.o: ../src/config/default/gfx/legato/string/legato_string.c  .generated_files/flags/default/8f83c31044ae8352c68f0af30ce6ce65a280965d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_string.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_string.o ../src/config/default/gfx/legato/string/legato_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_stringtable.o: ../src/config/default/gfx/legato/string/legato_stringtable.c  .generated_files/flags/default/d7bbc55670fb732767c0bc9af4d84d17baf878a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_stringtable.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_stringtable.o ../src/config/default/gfx/legato/string/legato_stringtable.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o: ../src/config/default/gfx/legato/string/legato_fixedstring.c  .generated_files/flags/default/deff942afed9b1749b05c8a5a076caf1c5040c17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1047211973" 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o.d" -o ${OBJECTDIR}/_ext/1047211973/legato_fixedstring.o ../src/config/default/gfx/legato/string/legato_fixedstring.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o: ../src/config/default/gfx/legato/vector/legato_vector_kernel.c  .generated_files/flags/default/dd16cafac79fdd7c7d1ebdc4da20b87421bac4fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_kernel.o ../src/config/default/gfx/legato/vector/legato_vector_kernel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_rectf.o: ../src/config/default/gfx/legato/vector/legato_rectf.c  .generated_files/flags/default/45df1bef48db08fe185cce338ebf62506c6552f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_rectf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_rectf.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_rectf.o ../src/config/default/gfx/legato/vector/legato_rectf.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c  .generated_files/flags/default/7c536c0fce336dce596ffbf9a86078855dda8c36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_fill.o ../src/config/default/gfx/legato/vector/legato_vector_arc_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_i16.o: ../src/config/default/gfx/legato/core/legato_real_i16.c  .generated_files/flags/default/b88531a5d923b3b7e8c2df8e3f0767d848535ac8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_i16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_i16.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_i16.o ../src/config/default/gfx/legato/core/legato_real_i16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c  .generated_files/flags/default/1b44c3fbad9fffa9896e107aba71e316369db6dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_convexpoly_fill.o ../src/config/default/gfx/legato/vector/legato_vector_convexpoly_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_vline.o: ../src/config/default/gfx/legato/vector/legato_vector_vline.c  .generated_files/flags/default/402659bc5c83f6601c3c6b6426bfb663ae11cafa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_vline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_vline.o ../src/config/default/gfx/legato/vector/legato_vector_vline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_point.o: ../src/config/default/gfx/legato/vector/legato_point.c  .generated_files/flags/default/6a35f6290359dce4a81ad5fa29300d1d432b8af7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_point.o ../src/config/default/gfx/legato/vector/legato_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector2.o: ../src/config/default/gfx/legato/vector/legato_vector2.c  .generated_files/flags/default/15c1e4d5ee47d49990d63031ea9d8980e7275155 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector2.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector2.o ../src/config/default/gfx/legato/vector/legato_vector2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_obb.o: ../src/config/default/gfx/legato/vector/legato_obb.c  .generated_files/flags/default/c699ce83aae8c4e486000018ea909067d67825e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_obb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_obb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_obb.o ../src/config/default/gfx/legato/vector/legato_obb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_plane.o: ../src/config/default/gfx/legato/vector/legato_plane.c  .generated_files/flags/default/9c7a634dfb711f012d0e834be4a0aab74d72451f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_plane.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_plane.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_plane.o ../src/config/default/gfx/legato/vector/legato_plane.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c  .generated_files/flags/default/bbbe83f771d4eca51e78eb83257a2777ea396633 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_fill.o ../src/config/default/gfx/legato/vector/legato_vector_rect_fill.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_linef.o: ../src/config/default/gfx/legato/vector/legato_linef.c  .generated_files/flags/default/12b822e6bdea7e4fb305659745643276ad5808c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_linef.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_linef.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_linef.o ../src/config/default/gfx/legato/vector/legato_linef.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aabb.o: ../src/config/default/gfx/legato/vector/legato_aabb.c  .generated_files/flags/default/d4936c210211d882186b78d7e343a1107c647deb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aabb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aabb.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aabb.o ../src/config/default/gfx/legato/vector/legato_aabb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_aa.o: ../src/config/default/gfx/legato/vector/legato_aa.c  .generated_files/flags/default/2fb00a60ce3834f567d3fbf8cd259f8316a93040 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_aa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_aa.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_aa.o ../src/config/default/gfx/legato/vector/legato_aa.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_line.o: ../src/config/default/gfx/legato/vector/legato_vector_line.c  .generated_files/flags/default/5e5b0e5e0f351ce0519f5a92c448902bbac2ced1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_line.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_line.o ../src/config/default/gfx/legato/vector/legato_vector_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c  .generated_files/flags/default/1df363a581fb2999ad43b6b09b9d3a6cfafc3158 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_arc_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_arc_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_hline.o: ../src/config/default/gfx/legato/vector/legato_vector_hline.c  .generated_files/flags/default/7024e34372ff3fc8ae76a05822e846a76a5a7a7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_hline.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_hline.o ../src/config/default/gfx/legato/vector/legato_vector_hline.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o: ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c  .generated_files/flags/default/1b197ac50d669a14d1fb2828113abb7db2770abc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_rect_stroke.o ../src/config/default/gfx/legato/vector/legato_vector_rect_stroke.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/92283465/legato_real_u8.o: ../src/config/default/gfx/legato/core/legato_real_u8.c  .generated_files/flags/default/92cd019b47138fc0b5a4b78e70eb69b4b14a453a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/92283465" 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d 
	@${RM} ${OBJECTDIR}/_ext/92283465/legato_real_u8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/92283465/legato_real_u8.o.d" -o ${OBJECTDIR}/_ext/92283465/legato_real_u8.o ../src/config/default/gfx/legato/core/legato_real_u8.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/975613587/legato_vector_point.o: ../src/config/default/gfx/legato/vector/legato_vector_point.c  .generated_files/flags/default/3ea22b4d872b815831a972b6044eb860dae9b9dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/975613587" 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d 
	@${RM} ${OBJECTDIR}/_ext/975613587/legato_vector_point.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/975613587/legato_vector_point.o.d" -o ${OBJECTDIR}/_ext/975613587/legato_vector_point.o ../src/config/default/gfx/legato/vector/legato_vector_point.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c  .generated_files/flags/default/b6d80df97253efeb05caa7f6ad67aae6a5570970 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc_skin_classic.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o: ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c  .generated_files/flags/default/ba6fbb7f9b86618899af2d4838388cfab540834c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1720272079" 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1720272079/legato_widget_arc.o ../src/config/default/gfx/legato/widget/arc/legato_widget_arc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c  .generated_files/flags/default/ecfdafb8ef0d05a91e9d0c41f8cb4db74773e47a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph_skin_classic.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o: ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c  .generated_files/flags/default/4667c1d0054b90d78e69544696efd27db13959c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1379158940" 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1379158940/legato_widget_bar_graph.o ../src/config/default/gfx/legato/widget/bargraph/legato_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button.c  .generated_files/flags/default/4865aee5072d3d84b256d075fd3857c2b35974d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button.o ../src/config/default/gfx/legato/widget/button/legato_widget_button.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o: ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c  .generated_files/flags/default/3c3680c04b0738b376082a5038ef932cf9bc36ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1043708429" 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1043708429/legato_widget_button_skin_classic.o ../src/config/default/gfx/legato/widget/button/legato_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c  .generated_files/flags/default/402cd7d1b7305abc24db0e00158b13b260cd8fca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o: ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c  .generated_files/flags/default/2aa820ebc9e958471c3c90d5bc1e6b3baf8c386f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/368479812" 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/368479812/legato_widget_checkbox_skin_classic.o ../src/config/default/gfx/legato/widget/checkbox/legato_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c  .generated_files/flags/default/6122568eb77bec586a8b5d231e1776e25e733fee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o: ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c  .generated_files/flags/default/5ba3f3f77d1e50c3c273823521d519492b8e63d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1026237551" 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1026237551/legato_widget_circle_skin_classic.o ../src/config/default/gfx/legato/widget/circle/legato_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/859ffd3da7ad16e91897187f46b36cc9a7dfa10d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge_skin_classic.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o: ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c  .generated_files/flags/default/92b6d3a8d6776a27ba34cc68b7ac656502b91d07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2143783897" 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/2143783897/legato_widget_circular_gauge.o ../src/config/default/gfx/legato/widget/circulargauge/legato_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c  .generated_files/flags/default/82e81119dc14bf8b335369e14d467173dc9a013a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider_skin_classic.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o: ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c  .generated_files/flags/default/2393c9d51493b04d07da0191e0fc254d4aef74d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1908827647" 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1908827647/legato_widget_circular_slider.o ../src/config/default/gfx/legato/widget/circularslider/legato_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c  .generated_files/flags/default/3f9c930c1c50dab5b13921c88420cb9d2aac5ae8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface_skin_classic.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o: ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c  .generated_files/flags/default/3fc789e6522c21a570243f28a34c51e9a078fe6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1828717368" 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1828717368/legato_widget_drawsurface.o ../src/config/default/gfx/legato/widget/drawsurface/legato_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c  .generated_files/flags/default/728f5684c6dd32822d082bca651135dbb84d3989 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient_skin_classic.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o: ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c  .generated_files/flags/default/e56652e82ffe9367a262160616dbe53a9fcfeca0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1078761039" 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1078761039/legato_widget_gradient.o ../src/config/default/gfx/legato/widget/gradient/legato_widget_gradient.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c  .generated_files/flags/default/f29b991a79cc74d8311104c3cfb83f34555669a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox_skin_classic.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o: ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c  .generated_files/flags/default/deddd6233c8d42017f33a1dd1c00e532ea50d097 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/662047379" 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/662047379/legato_widget_groupbox.o ../src/config/default/gfx/legato/widget/groupbox/legato_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image.c  .generated_files/flags/default/50f30739995e055d95bc7516330fffd9faec391e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image.o ../src/config/default/gfx/legato/widget/image/legato_widget_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o: ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c  .generated_files/flags/default/26b34b25b31a0c7a20760507ef77b6c63afe5276 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/388181626" 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/388181626/legato_widget_image_skin_classic.o ../src/config/default/gfx/legato/widget/image/legato_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c  .generated_files/flags/default/75d78f364efc23bf63bf55cb6a1a53e3c35384cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate_skin_classic.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o: ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c  .generated_files/flags/default/acd7f40bff626df632cd691de05f70f6747da783 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1310443605" 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o.d" -o ${OBJECTDIR}/_ext/1310443605/legato_widget_imagerotate.o ../src/config/default/gfx/legato/widget/imagerotate/legato_widget_imagerotate.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c  .generated_files/flags/default/ad8ebe65a26ce2c40e3041a07a90dab58195800c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale_skin_classic.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o: ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c  .generated_files/flags/default/6e38770360f309b8975e6f5a533bfef7cbdd926c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1012651792" 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o.d" -o ${OBJECTDIR}/_ext/1012651792/legato_widget_imagescale.o ../src/config/default/gfx/legato/widget/imagescale/legato_widget_imagescale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c  .generated_files/flags/default/cf7d6683cff876b9c612ab6be06feb51dbdde2f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence_skin_classic.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o: ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c  .generated_files/flags/default/1cf700f7f27d261a1d04c71aeb0a8bdb2fe05b6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1994224581" 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1994224581/legato_widget_imagesequence.o ../src/config/default/gfx/legato/widget/imagesequence/legato_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c  .generated_files/flags/default/22bf7946226cf095814d6a590b2e4f5117717348 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o: ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c  .generated_files/flags/default/ed95e24190bdbc760c8cfc502e22d6474dc88f39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/800677739" 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/800677739/legato_widget_keypad_skin_classic.o ../src/config/default/gfx/legato/widget/keypad/legato_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label.c  .generated_files/flags/default/41af51c4af06904e8458d1ca5f3bef75db4807ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label.o ../src/config/default/gfx/legato/widget/label/legato_widget_label.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o: ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c  .generated_files/flags/default/6c640f0554af57b5918186d028db313f2af0dd7e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/390595603" 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/390595603/legato_widget_label_skin_classic.o ../src/config/default/gfx/legato/widget/label/legato_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c  .generated_files/flags/default/e8f6eac4f2d8e842dec9ee1ba8fdbafb0850927b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line_skin_classic.o ../src/config/default/gfx/legato/widget/line/legato_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507403/legato_widget_line.o: ../src/config/default/gfx/legato/widget/line/legato_widget_line.c  .generated_files/flags/default/3487e874b43e0179347ec6e24706473bf949fb52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507403" 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507403/legato_widget_line.o.d" -o ${OBJECTDIR}/_ext/1788507403/legato_widget_line.o ../src/config/default/gfx/legato/widget/line/legato_widget_line.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c  .generated_files/flags/default/ac583b04ffb50e299e5505e49cb329be2f34c830 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph_skin_classic.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o: ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c  .generated_files/flags/default/c693a591f6b89ced56b5ebc3ebf89c978dfb481e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/645187449" 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/645187449/legato_widget_line_graph.o ../src/config/default/gfx/legato/widget/linegraph/legato_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list.c  .generated_files/flags/default/ffdce1634718aeda95ffd9bf066e6862cd73eaaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list.o ../src/config/default/gfx/legato/widget/list/legato_widget_list.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o: ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c  .generated_files/flags/default/aaabf3c22ec864a25539664f680eb467b93071ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1788507233" 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1788507233/legato_widget_list_skin_classic.o ../src/config/default/gfx/legato/widget/list/legato_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c  .generated_files/flags/default/f884c358a4ad9bc025cd9a21a050ddd410af3ccc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o: ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c  .generated_files/flags/default/9fe08b91b08cd63b2b8d3fc45a6d2454713c404f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1231657756" 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1231657756/legato_widget_listwheel_skin_classic.o ../src/config/default/gfx/legato/widget/listwheel/legato_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c  .generated_files/flags/default/5f556e96e20b863fab53bf91e15bd2eee091bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o: ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c  .generated_files/flags/default/edf7867d02f82ed1c6b08938c1895b4cbf708591 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1857376173" 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1857376173/legato_widget_pie_chart_skin_classic.o ../src/config/default/gfx/legato/widget/piechart/legato_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c  .generated_files/flags/default/d90393501f43a6f45f9a99f34c1c40172859e811 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o: ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c  .generated_files/flags/default/f564df041796128e5874e3cd78c8894df53609ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/616308571" 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/616308571/legato_widget_progressbar_skin_classic.o ../src/config/default/gfx/legato/widget/progressbar/legato_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c  .generated_files/flags/default/7831ed65eff2b3a4ec9cdd85f9d1532ef43b3505 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_state.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_state.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c  .generated_files/flags/default/57f07341c1b538e954c43c0629ca560dca019c86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu_skin_classic.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o: ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c  .generated_files/flags/default/ff70c8867d59a3b2b4c3da48fafed07188450a6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2046438975" 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/2046438975/legato_widget_radial_menu.o ../src/config/default/gfx/legato/widget/radialmenu/legato_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c  .generated_files/flags/default/ac068182cdee53aea96ff0bc3f87f3e30b1787d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_radiobutton_group.o ../src/config/default/gfx/legato/widget/radiobutton/legato_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c  .generated_files/flags/default/4e15235711e7a84dbfb8559a7749adb0512b49b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o: ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c  .generated_files/flags/default/5c1882b4d754a8b1ff294b83bef4580ac6041aa1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1723202356" 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1723202356/legato_widget_radiobutton_skin_classic.o ../src/config/default/gfx/legato/widget/radiobutton/legato_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c  .generated_files/flags/default/a7ef91873ab78a26cb5352509285132f95701090 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o: ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c  .generated_files/flags/default/171beb7416c7eb3633cd41af36dc99d2a2ef5e91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/739734770" 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/739734770/legato_widget_rectangle_skin_classic.o ../src/config/default/gfx/legato/widget/rectangle/legato_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c  .generated_files/flags/default/81b0773b93462bd310ca73484b5c1c65337d461d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o: ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c  .generated_files/flags/default/257bff4248add9879ec114f94e4865304e7be71c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1443241019" 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1443241019/legato_widget_scrollbar_skin_classic.o ../src/config/default/gfx/legato/widget/scrollbar/legato_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c  .generated_files/flags/default/49f672ee3dfdcddf113b8a60ff64fe7fbf1cd9d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o: ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c  .generated_files/flags/default/847a068a984a79c9fa3dab60a56177ba0aef3138 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565667934" 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/565667934/legato_widget_slider_skin_classic.o ../src/config/default/gfx/legato/widget/slider/legato_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c  .generated_files/flags/default/b6b2d8283a8ed3e5678c4a7e130ed1b2d2a26d34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield_skin_classic.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o: ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c  .generated_files/flags/default/5fb9754e15d2d1852f447df7634f6a34ad22e228 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1402498444" 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1402498444/legato_widget_textfield.o ../src/config/default/gfx/legato/widget/textfield/legato_widget_textfield.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c  .generated_files/flags/default/7182d2838cf354768577c477f247eb0521c73d5e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest_skin_classic.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o: ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c  .generated_files/flags/default/73fdf0719b73076703eed4b239f394f9a3f0d2e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1496299024" 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1496299024/legato_widget_touchtest.o ../src/config/default/gfx/legato/widget/touchtest/legato_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c  .generated_files/flags/default/53b6decc562b0b9d1b6df04aa081d6b08b2b2edf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window_skin_classic.o ../src/config/default/gfx/legato/widget/window/legato_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/453772623/legato_widget_window.o: ../src/config/default/gfx/legato/widget/window/legato_widget_window.c  .generated_files/flags/default/776a87fd4d55d8aa3447e3ced6e9956976069f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/453772623" 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/453772623/legato_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/453772623/legato_widget_window.o.d" -o ${OBJECTDIR}/_ext/453772623/legato_widget_window.o ../src/config/default/gfx/legato/widget/window/legato_widget_window.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c  .generated_files/flags/default/33654de2a5088220d3e753636e133e5b3d837b2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic_common.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget.o: ../src/config/default/gfx/legato/widget/legato_widget.c  .generated_files/flags/default/b3d259916e6ce8a0275508177e31147a0840be06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget.o ../src/config/default/gfx/legato/widget/legato_widget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_editwidget.o: ../src/config/default/gfx/legato/widget/legato_editwidget.c  .generated_files/flags/default/97df392c94f9349870499d1ab06209710e5668d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_editwidget.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_editwidget.o ../src/config/default/gfx/legato/widget/legato_editwidget.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o: ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c  .generated_files/flags/default/c23746d1148f6f8ce3c0883015a22a604e98adda .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/943273362" 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/943273362/legato_widget_skin_classic.o ../src/config/default/gfx/legato/widget/legato_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/654906dbda39cd8b2fd6b64b1e04d2ca7bee7d1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865171381/plib_dwdt.o: ../src/config/default/peripheral/dwdt/plib_dwdt.c  .generated_files/flags/default/cbc03df8382cdb8644c31c97cc1e834bea6ebb39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865171381" 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1865171381/plib_dwdt.o.d" -o ${OBJECTDIR}/_ext/1865171381/plib_dwdt.o ../src/config/default/peripheral/dwdt/plib_dwdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o: ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c  .generated_files/flags/default/bc2d7b6ccaf4cc968d86ef11b46e6c2f8cfeb466 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/429438372" 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o.d" -o ${OBJECTDIR}/_ext/429438372/plib_flexcom0_twi_master.o ../src/config/default/peripheral/flexcom/twi/master/plib_flexcom0_twi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o: ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c  .generated_files/flags/default/4c54c19ae4704cedecac455c289434c42622f1bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1818436620" 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o.d" -o ${OBJECTDIR}/_ext/1818436620/plib_flexcom6_usart.o ../src/config/default/peripheral/flexcom/usart/plib_flexcom6_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169263/plib_gic.o: ../src/config/default/peripheral/gic/plib_gic.c  .generated_files/flags/default/a1f8428b7d73b8f2d08286d1261ec9882d24bf5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60169263" 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169263/plib_gic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60169263/plib_gic.o.d" -o ${OBJECTDIR}/_ext/60169263/plib_gic.o ../src/config/default/peripheral/gic/plib_gic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60175171/plib_mmu.o: ../src/config/default/peripheral/mmu/plib_mmu.c  .generated_files/flags/default/fd9a86e6a3fa5dc85e0263a0cc83b569d776e57e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60175171" 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/60175171/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60175171/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/60175171/plib_mmu.o ../src/config/default/peripheral/mmu/plib_mmu.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/9e978065685ec1f6c278cb6d345841b85e35da13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o: ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c  .generated_files/flags/default/bcf6fdc679ec9d1a2a26b1f1191a50a0d094c831 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1999033280" 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o.d" -o ${OBJECTDIR}/_ext/1999033280/plib_sdmmc1.o ../src/config/default/peripheral/sdmmc/plib_sdmmc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/829342655/plib_tc0.o: ../src/config/default/peripheral/tc/plib_tc0.c  .generated_files/flags/default/ce0c1734e7b43c994dddc7436f8318b470e97312 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829342655" 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/829342655/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/829342655/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/829342655/plib_tc0.o ../src/config/default/peripheral/tc/plib_tc0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/5fafb52cf4cda21bdcf25ff7dccdad89cc6b77ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  .generated_files/flags/default/a441bb8096a088e3dd1f457cb4e300940f4cf324 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ff.o: ../src/config/default/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/default/c55489ba7faf1dedc403974533090e110056b680 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ff.o.d" -o ${OBJECTDIR}/_ext/411819097/ff.o ../src/config/default/system/fs/fat_fs/file_system/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/411819097/ffunicode.o: ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/default/b43693795bb335cd458e017fbc6000ffbc8c5bc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/411819097" 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/411819097/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/411819097/ffunicode.o.d" -o ${OBJECTDIR}/_ext/411819097/ffunicode.o ../src/config/default/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/565198302/diskio.o: ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/default/fcf5a50799c55aee7167743c82326dd7321e473 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565198302" 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/565198302/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/565198302/diskio.o.d" -o ${OBJECTDIR}/_ext/565198302/diskio.o ../src/config/default/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/flags/default/96d80a945c5dcc2785e889bf364a1881ec8681b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o: ../src/config/default/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/default/4d62a22fd2cf1a6b9ddff433ecdc40b10e3a8fe4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_fat_interface.o ../src/config/default/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/default/7472669e476ae4c5cdbce622a2344fab277a0fe4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input_listener.o: ../src/config/default/system/input/sys_input_listener.c  .generated_files/flags/default/cad8864ea44513caca9fead2ac56e7ec2b685456 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input_listener.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input_listener.o ../src/config/default/system/input/sys_input_listener.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1008098389/sys_input.o: ../src/config/default/system/input/sys_input.c  .generated_files/flags/default/cf283af9467125bd09834ccc4223ec265357e822 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1008098389" 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1008098389/sys_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1008098389/sys_input.o.d" -o ${OBJECTDIR}/_ext/1008098389/sys_input.o ../src/config/default/system/input/sys_input.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/7b60dcaa1359dfb58da7dfc1ef3bb7a091bbc2db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/flags/default/d318461877f003959e752095f31403f6c167ad25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/e51e4b52fdc10f6aeeb9edc56958ae117c4aa628 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/1d4e0119c09f527eaf5f11a97bbcddf22f122c10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/8ec2afa4fcc7af4f55d86d1298acee0a61ae61f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/fault_handlers.o: ../src/config/default/fault_handlers.c  .generated_files/flags/default/cf822cc6314a244884f283ff6500460253a22288 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1171490990/fault_handlers.o ../src/config/default/fault_handlers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jcomapi.o: ../src/third_party/jpeg-6b/jcomapi.c  .generated_files/flags/default/63b3767c086d54e4d7e83d637188a3bfed5adff1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jcomapi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jcomapi.o.d" -o ${OBJECTDIR}/_ext/1854554250/jcomapi.o ../src/third_party/jpeg-6b/jcomapi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapimin.o: ../src/third_party/jpeg-6b/jdapimin.c  .generated_files/flags/default/7a7b8587d53bb296f60dc91e50b10719b7f6feae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapimin.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapimin.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapimin.o ../src/third_party/jpeg-6b/jdapimin.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdapistd.o: ../src/third_party/jpeg-6b/jdapistd.c  .generated_files/flags/default/d5e951f0a1203db8430147a9e4c5ab9d491376f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdapistd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdapistd.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdapistd.o ../src/third_party/jpeg-6b/jdapistd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdatasrc.o: ../src/third_party/jpeg-6b/jdatasrc.c  .generated_files/flags/default/507027d37cf1c96818a4ea566566358cb7951fef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdatasrc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdatasrc.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdatasrc.o ../src/third_party/jpeg-6b/jdatasrc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcoefct.o: ../src/third_party/jpeg-6b/jdcoefct.c  .generated_files/flags/default/94474e4e9beb1db94c0a174c19a575d29844b90d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcoefct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcoefct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcoefct.o ../src/third_party/jpeg-6b/jdcoefct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdcolor.o: ../src/third_party/jpeg-6b/jdcolor.c  .generated_files/flags/default/96fbb7b29ab149b9c364acd0dbefc7cc0399270d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdcolor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdcolor.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdcolor.o ../src/third_party/jpeg-6b/jdcolor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jddctmgr.o: ../src/third_party/jpeg-6b/jddctmgr.c  .generated_files/flags/default/eaf08c5501462ba55bc69dcb3fbf10018eeb87b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jddctmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jddctmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jddctmgr.o ../src/third_party/jpeg-6b/jddctmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdhuff.o: ../src/third_party/jpeg-6b/jdhuff.c  .generated_files/flags/default/846315e1dee883c058d9a08195d6fcb88f4c1d1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdhuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdhuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdhuff.o ../src/third_party/jpeg-6b/jdhuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdinput.o: ../src/third_party/jpeg-6b/jdinput.c  .generated_files/flags/default/3536bc0717e043dfce0490f61f3513cf4986ff10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdinput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdinput.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdinput.o ../src/third_party/jpeg-6b/jdinput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmainct.o: ../src/third_party/jpeg-6b/jdmainct.c  .generated_files/flags/default/e54835219c0089555110b0ddaa19b115542e3387 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmainct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmainct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmainct.o ../src/third_party/jpeg-6b/jdmainct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmarker.o: ../src/third_party/jpeg-6b/jdmarker.c  .generated_files/flags/default/f4e9c39da9881f605d39ba8c236f0286ccea5600 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmarker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmarker.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmarker.o ../src/third_party/jpeg-6b/jdmarker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmaster.o: ../src/third_party/jpeg-6b/jdmaster.c  .generated_files/flags/default/ab30cd38967e57cc7ce28fd36fa2f4cc97ddfb7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmaster.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmaster.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmaster.o ../src/third_party/jpeg-6b/jdmaster.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdmerge.o: ../src/third_party/jpeg-6b/jdmerge.c  .generated_files/flags/default/f00cf242a017520d24a70fa19c18dace09441705 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdmerge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdmerge.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdmerge.o ../src/third_party/jpeg-6b/jdmerge.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdphuff.o: ../src/third_party/jpeg-6b/jdphuff.c  .generated_files/flags/default/38e31a75ca5753295ade596bfb9a1be17f9b75e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdphuff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdphuff.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdphuff.o ../src/third_party/jpeg-6b/jdphuff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdpostct.o: ../src/third_party/jpeg-6b/jdpostct.c  .generated_files/flags/default/dca0df3dce1393ae93dda4e1e5d840251b4beb44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdpostct.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdpostct.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdpostct.o ../src/third_party/jpeg-6b/jdpostct.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdsample.o: ../src/third_party/jpeg-6b/jdsample.c  .generated_files/flags/default/16cd49d5397d886083c2e3b1fcbbf9282c875ce8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdsample.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdsample.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdsample.o ../src/third_party/jpeg-6b/jdsample.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jdtrans.o: ../src/third_party/jpeg-6b/jdtrans.c  .generated_files/flags/default/46f9c042defb061d9ad8d103ecf1022e823ac648 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jdtrans.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jdtrans.o.d" -o ${OBJECTDIR}/_ext/1854554250/jdtrans.o ../src/third_party/jpeg-6b/jdtrans.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jerror.o: ../src/third_party/jpeg-6b/jerror.c  .generated_files/flags/default/e40f3b96a586631bd38a195ab9483face7c33edf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jerror.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jerror.o.d" -o ${OBJECTDIR}/_ext/1854554250/jerror.o ../src/third_party/jpeg-6b/jerror.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctflt.o: ../src/third_party/jpeg-6b/jidctflt.c  .generated_files/flags/default/a38e58603daa86ff2d9f8ad5ea6ef5d7eba4c9ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctflt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctflt.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctflt.o ../src/third_party/jpeg-6b/jidctflt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctfst.o: ../src/third_party/jpeg-6b/jidctfst.c  .generated_files/flags/default/26095034609cfd3d440dad53ec674bbd8f0cada6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctfst.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctfst.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctfst.o ../src/third_party/jpeg-6b/jidctfst.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctint.o: ../src/third_party/jpeg-6b/jidctint.c  .generated_files/flags/default/3f062d6352e09c449006a3e3e8f6bae7ecaddfc1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctint.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctint.o ../src/third_party/jpeg-6b/jidctint.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jidctred.o: ../src/third_party/jpeg-6b/jidctred.c  .generated_files/flags/default/d00a165e5c58425c8d5c55cfa6c29356baf73488 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jidctred.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jidctred.o.d" -o ${OBJECTDIR}/_ext/1854554250/jidctred.o ../src/third_party/jpeg-6b/jidctred.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemmgr.o: ../src/third_party/jpeg-6b/jmemmgr.c  .generated_files/flags/default/74d2167adb2db2499c925f32ab99e11ea55ae88c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemmgr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemmgr.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemmgr.o ../src/third_party/jpeg-6b/jmemmgr.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jmemnobs.o: ../src/third_party/jpeg-6b/jmemnobs.c  .generated_files/flags/default/f1ff27995b2d2df83306aecce6cd9efb9fe723ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jmemnobs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jmemnobs.o.d" -o ${OBJECTDIR}/_ext/1854554250/jmemnobs.o ../src/third_party/jpeg-6b/jmemnobs.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant1.o: ../src/third_party/jpeg-6b/jquant1.c  .generated_files/flags/default/69cad94aee0add323bca9c10b508af8da5f33f2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant1.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant1.o ../src/third_party/jpeg-6b/jquant1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jquant2.o: ../src/third_party/jpeg-6b/jquant2.c  .generated_files/flags/default/acbf209cafe13a5200661e9c8fd1bf01f7ec8211 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jquant2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jquant2.o.d" -o ${OBJECTDIR}/_ext/1854554250/jquant2.o ../src/third_party/jpeg-6b/jquant2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854554250/jutils.o: ../src/third_party/jpeg-6b/jutils.c  .generated_files/flags/default/c15b0a1663947f309ea998c50bc82757ae23351a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1854554250" 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854554250/jutils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1854554250/jutils.o.d" -o ${OBJECTDIR}/_ext/1854554250/jutils.o ../src/third_party/jpeg-6b/jutils.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/63e66ba7b0a60e0f4de84a703c51a896902a5fe3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/4a24ed80ac3ed2ee79cc9aecb3c9e84a60289878 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_help.o: ../src/app_screen_help.c  .generated_files/flags/default/2c9ac43168df02c053c9e14fa7af2b48e3b6bc72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_help.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_help.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_help.o ../src/app_screen_help.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_screen_home.o: ../src/app_screen_home.c  .generated_files/flags/default/33529b7afdd945c08332741861c9a039d1d80e6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_screen_home.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_screen_home.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_screen_home.o ../src/app_screen_home.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/djpeg.o: ../src/djpeg.c  .generated_files/flags/default/ccc0726254487e91da8a59e0dd0f21e1cc70afbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/djpeg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/config/default/system/fs/fat_fs/file_system" -I"../src/config/default/system/fs/fat_fs/hardware_access" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core_A/Include" -I"../src/packs/SAMA7D65_DFP" -I"../src/third_party/jpeg-6b" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/djpeg.o.d" -o ${OBJECTDIR}/_ext/1360937237/djpeg.o ../src/djpeg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -marm -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/h3_string.o: ../src/h3_string.c  .generated_files/flags/default/371f184aedd2d470e61818426f078621fb928fb2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8000000,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ddr.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8000000,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/sam_a7d65_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
