.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 957
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 958
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 959
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1400(Lcom/android/server/display/BrightnessTracker;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    .line 975
    goto :goto_1

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1600(Lcom/android/server/display/BrightnessTracker;)V

    .line 978
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_1

    .line 966
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 967
    .local v0, "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 968
    .local v4, "userInitiatedChange":Z
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v3, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v6, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    invoke-static/range {v2 .. v9}, Lcom/android/server/display/BrightnessTracker;->access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V

    .line 971
    goto :goto_1

    .line 963
    .end local v0    # "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    .end local v4    # "userInitiatedChange":Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->access$1200(Lcom/android/server/display/BrightnessTracker;F)V

    .line 964
    nop

    .line 981
    :goto_1
    return-void
.end method
