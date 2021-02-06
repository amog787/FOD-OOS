.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$ShellCmd$wIyZd8yGeA-XCYbKjSRjNBh_VTk;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    check-cast p1, Landroid/companion/Association;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->lambda$onCommand$0$CompanionDeviceManagerService$ShellCmd(Landroid/companion/Association;)V

    return-void
.end method
