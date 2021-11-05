.class Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 162
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    const-string v3, "EmergencyAffordanceService"

    if-eq v0, v2, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    const-string v0, "AIRPLANE_MODE_ON: reset mPollingComplete, sent INITIALIZE_STATE msg"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->setPollingComplete(I)V

    .line 188
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 180
    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "countryIso":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 176
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v2, v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$300(Lcom/android/server/emergency/EmergencyAffordanceService;Ljava/lang/String;I)V

    .line 177
    goto :goto_0

    .line 171
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v1    # "slotId":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 172
    nop

    .line 195
    :cond_4
    :goto_0
    return-void
.end method
