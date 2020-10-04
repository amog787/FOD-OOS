.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;->f$0:Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$TcpKeepaliveController$mLZJWrEAOnfgV5N3ZSa2J3iTmxE;->f$0:Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/TcpKeepaliveController;->lambda$startSocketMonitor$0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;Ljava/io/FileDescriptor;I)I

    move-result p1

    return p1
.end method
