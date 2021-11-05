.class final Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
.super Lcom/android/server/display/color/TintController;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NightDisplayTintController"
.end annotation


# instance fields
.field private mColorTemp:Ljava/lang/Integer;

.field private final mColorTempCoefficients:[F

.field private mIsAvailable:Ljava/lang/Boolean;

.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    .line 1918
    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    .line 1919
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x1"    # Lcom/android/server/display/color/ColorDisplayService$1;

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void
.end method

.method private clampNightDisplayColorTemperature(I)I
    .locals 2
    .param p1, "colorTemperature"    # I

    .line 2077
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2082
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result v0

    .line 2083
    .local v0, "minimumTemperature":I
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2084
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result v1

    .line 2085
    .local v1, "maximumTemperature":I
    if-ge p1, v0, :cond_1

    .line 2086
    move p1, v0

    goto :goto_0

    .line 2087
    :cond_1
    if-le p1, v1, :cond_2

    .line 2088
    move p1, v1

    .line 2091
    :cond_2
    :goto_0
    return p1
.end method

.method private onActivated(Z)V
    .locals 3
    .param p1, "activated"    # Z

    .line 2013
    if-eqz p1, :cond_0

    const-string v0, "Turning on night display"

    goto :goto_0

    :cond_0
    const-string v0, "Turning off night display"

    :goto_0
    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$3600(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2015
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$3600(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onActivated(Z)V

    .line 2018
    if-nez p1, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$3700(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    .line 2020
    .local v0, "mTwilightManager":Lcom/android/server/twilight/TwilightManager;
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->stopUpdateLocation()V

    .line 2021
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3402(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    .line 2026
    .end local v0    # "mTwilightManager":Lcom/android/server/twilight/TwilightManager;
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2027
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 2032
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3802(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    .line 2034
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2035
    return-void
.end method


# virtual methods
.method getColorTemperature()I
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result v0

    goto :goto_0

    .line 2039
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v0

    .line 2038
    :goto_0
    return v0
.end method

.method getColorTemperatureSetting()I
    .locals 4

    .line 2067
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 2068
    return v1

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2071
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2073
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    .line 2070
    const-string/jumbo v3, "night_display_color_temperature"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 2001
    const/16 v0, 0x64

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_0
    return-object v0
.end method

.method isActivatedSetting()Z
    .locals 4

    .line 2059
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 2060
    return v1

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2063
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    .line 2062
    const-string/jumbo v3, "night_display_activated"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2006
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2007
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 2009
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method onColorTemperatureChanged(I)V
    .locals 2
    .param p1, "temperature"    # I

    .line 2054
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2056
    return-void
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "activated"    # Ljava/lang/Boolean;

    .line 1965
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1966
    return-void
.end method

.method public setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 5
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "lastActivationTime"    # Ljava/time/LocalDateTime;

    .line 1973
    if-nez p1, :cond_0

    .line 1974
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1975
    return-void

    .line 1978
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1980
    .local v0, "activationStateChanged":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1982
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1984
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1985
    invoke-static {v3}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v3

    .line 1982
    const-string/jumbo v4, "night_display_last_activated_time"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1988
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_5

    .line 1989
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1991
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1993
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v3}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v3

    .line 1991
    const-string/jumbo v4, "night_display_activated"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1995
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onActivated(Z)V

    .line 1997
    :cond_5
    return-void
.end method

.method setColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .line 2043
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 2044
    const/4 v0, 0x0

    return v0

    .line 2046
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 2047
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2048
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v1

    .line 2047
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 2049
    .local v0, "success":Z
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    .line 2050
    return v0
.end method

.method public setMatrix(I)V
    .locals 9
    .param p1, "cct"    # I

    .line 1939
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 1940
    const-string v0, "ColorDisplayService"

    const-string v1, "The display transformation matrix must be 4x4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return-void

    .line 1944
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1946
    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 1947
    .local v0, "squareTemperature":F
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget v3, v2, v1

    mul-float/2addr v3, v0

    int-to-float v4, p1

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    add-float/2addr v3, v4

    .line 1949
    .local v3, "red":F
    const/4 v4, 0x3

    aget v4, v2, v4

    mul-float/2addr v4, v0

    int-to-float v5, p1

    const/4 v6, 0x4

    aget v6, v2, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v6, v2, v5

    add-float/2addr v4, v6

    .line 1951
    .local v4, "green":F
    const/4 v6, 0x6

    aget v6, v2, v6

    mul-float/2addr v6, v0

    int-to-float v7, p1

    const/4 v8, 0x7

    aget v8, v2, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/16 v7, 0x8

    aget v2, v2, v7

    add-float/2addr v6, v2

    .line 1953
    .local v6, "blue":F
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mMatrix:[F

    aput v3, v2, v1

    .line 1954
    aput v4, v2, v5

    .line 1955
    const/16 v1, 0xa

    aput v6, v2, v1

    .line 1956
    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needsLinear"    # Z

    .line 1929
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1930
    const v1, 0x107005d

    goto :goto_0

    .line 1931
    :cond_0
    const v1, 0x107005e

    .line 1929
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, "coefficients":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1933
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTempCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 1932
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1935
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
