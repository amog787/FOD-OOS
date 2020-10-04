.class Lcom/android/server/ConnectivityService$7$2;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$7;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/ConnectivityService$7;

    .line 4369
    iput-object p1, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 4372
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p2}, Lcom/android/server/ConnectivityService;->access$6102(Lcom/android/server/ConnectivityService;Z)Z

    .line 4373
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBoxListener notShowAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$7$2;->this$1:Lcom/android/server/ConnectivityService$7;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    return-void
.end method
