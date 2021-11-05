.class Lcom/android/server/lights/LightsService$1;
.super Lcom/android/server/lights/LightsManager;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .line 622
    iput-object p1, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LightsManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLight(I)Lcom/android/server/lights/LogicalLight;
    .locals 1
    .param p1, "lightType"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/server/lights/LightsService$1;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 628
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
