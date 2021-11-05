.class Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .line 339
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$702(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$800(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$900(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 346
    const-wide/32 v0, 0x20000

    .line 347
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$1000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 346
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$1102(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 351
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$600(Lcom/android/server/display/DisplayPowerState;)V

    .line 352
    return-void
.end method
