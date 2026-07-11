QSON_INSTALL_HEADERS = $(call INSTALL_HEADER_RESOLVER,qson)

$(INSTALL_DIR)/usr/lib/libqson.so: $(BUILD_DIR)/libqson.so
	$(info > Installing $@)
	install -Dm755 $< $@

INSTALL_TARGETS += \
		$(INSTALL_DIR)/usr/lib/libqson.so \
		$(call INSTALL_HEADER_TO_TARGET,qson,$(QSON_INSTALL_HEADERS))

