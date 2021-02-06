.class Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;
.super Ljava/lang/Object;
.source "DisplayOLC.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayOLC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayOLC;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayOLC;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayOLC;

    .line 161
    iput-object p1, p0, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;->this$0:Lcom/android/server/display/DisplayOLC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 164
    const-string v0, "DisplayOLC"

    const-string/jumbo v1, "update brightness OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;->this$0:Lcom/android/server/display/DisplayOLC;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayOLC;->access$100(Lcom/android/server/display/DisplayOLC;Lorg/json/JSONArray;)V

    .line 166
    return-void
.end method
