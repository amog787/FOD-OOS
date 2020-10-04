.class final Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwilightNightDisplayAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 1

    .line 1170
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    .line 1171
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 1172
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;Z)V
    .locals 6
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;
    .param p2, "isTwilightStateChanged"    # Z

    .line 1181
    if-nez p1, :cond_0

    .line 1186
    const-string v0, "ColorDisplayService"

    const-string v1, "TwilightState: state == null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void

    .line 1191
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 1192
    .local v0, "activate":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_1

    .line 1193
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1194
    .local v1, "now":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1195
    .local v2, "sunrise":Ljava/time/LocalDateTime;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1204
    .local v3, "sunset":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1205
    invoke-virtual {v5, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v0

    .line 1211
    .end local v1    # "now":Ljava/time/LocalDateTime;
    .end local v2    # "sunrise":Ljava/time/LocalDateTime;
    .end local v3    # "sunset":Ljava/time/LocalDateTime;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1212
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1215
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1216
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    .line 1217
    .local v1, "mTwilightManager":Lcom/android/server/twilight/TwilightManager;
    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->startUpdateLocation()V

    .line 1218
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/display/color/ColorDisplayService;->access$2402(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    .line 1221
    .end local v1    # "mTwilightManager":Lcom/android/server/twilight/TwilightManager;
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1223
    :cond_4
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 1227
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1228
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2600(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1242
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;Z)V

    .line 1244
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1250
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTwilightStateChanged: isNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;Z)V

    .line 1264
    return-void
.end method
