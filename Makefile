setup:
	./script/setup.sh
	open Template_iOSUIKit_VIPER.xcworkspace
.PHONY: setup

clean:
	./script/clean.sh
.PHONY: clean

component:
ifdef name
	mint run pui generate VIPER ${name}
else
	@echo "make component name=<component name>"
endif
.PHONY: component