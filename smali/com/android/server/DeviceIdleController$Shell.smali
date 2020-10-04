.class Lcom/android/server/DeviceIdleController$Shell;
.super Landroid/os/ShellCommand;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 4042
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4043
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4047
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/DeviceIdleController;->onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 4052
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4053
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4054
    return-void
.end method
