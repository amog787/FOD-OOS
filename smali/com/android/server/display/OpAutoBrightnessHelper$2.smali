.class Lcom/android/server/display/OpAutoBrightnessHelper$2;
.super Ljava/lang/Object;
.source "OpAutoBrightnessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OpAutoBrightnessHelper;->reportAdjustEvent(Ljava/lang/String;Ljava/lang/String;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

.field final synthetic val$after:F

.field final synthetic val$before:F

.field final synthetic val$lux:F

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rgb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/OpAutoBrightnessHelper;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 248
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    iput-object p2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$rgb:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$lux:F

    iput p5, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$before:F

    iput p6, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$after:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 251
    const-string v0, "OpAutoBrightnessHelper"

    const-string v1, "Report adjustment event."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "52WW0MUAGI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v1, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$300(Lcom/android/server/display/OpAutoBrightnessHelper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hour"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$pkg:Ljava/lang/String;

    const-string v3, "front_package"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$rgb:Ljava/lang/String;

    const-string/jumbo v3, "rgb_value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$lux:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "lux_value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$before:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "level_before_adjustment"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->val$after:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "level_after_adjustment"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$400(Lcom/android/server/display/OpAutoBrightnessHelper;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nightmode_on"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$500(Lcom/android/server/display/OpAutoBrightnessHelper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nightmode_cct"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$600(Lcom/android/server/display/OpAutoBrightnessHelper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nightmode_brightness"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$700(Lcom/android/server/display/OpAutoBrightnessHelper;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dark_theme_on"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$800(Lcom/android/server/display/OpAutoBrightnessHelper;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "opt_func_on"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OpAutoBrightnessHelper$2;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$900(Lcom/android/server/display/OpAutoBrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "manual_adjust_info"

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 268
    return-void
.end method
