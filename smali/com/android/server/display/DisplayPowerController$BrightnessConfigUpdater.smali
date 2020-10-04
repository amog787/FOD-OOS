.class Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 3124
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 3127
    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "update brightness OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;Lorg/json/JSONArray;)V

    .line 3129
    return-void
.end method
