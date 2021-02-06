.class Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# static fields
.field public static final USAGE:Ljava/lang/String; = "help\nlist USER_ID\nassociate USER_ID PACKAGE MAC_ADDRESS\ndisassociate USER_ID PACKAGE MAC_ADDRESS"


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 2

    .line 669
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 670
    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    const-string v1, "ShellCmd"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private getNextArgInt()I
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic lambda$onCommand$0$CompanionDeviceManagerService$ShellCmd(Landroid/companion/Association;)V
    .locals 3
    .param p1, "a"    # Landroid/companion/Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/companion/Association;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 676
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x32b09e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x2ebfca50

    if-eq v0, v1, :cond_2

    const v1, 0x5e900f1e

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "associate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "disassociate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 690
    goto :goto_2

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 686
    goto :goto_2

    .line 678
    :cond_6
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 679
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getNextArgInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1300(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;)V

    .line 678
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 682
    nop

    .line 694
    :goto_2
    return v2
.end method

.method public onHelp()V
    .locals 2

    .line 703
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "help\nlist USER_ID\nassociate USER_ID PACKAGE MAC_ADDRESS\ndisassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    return-void
.end method
