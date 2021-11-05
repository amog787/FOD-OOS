.class Lcom/android/server/am/ActivityManagerService$MemBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$MemBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService$MemBinder;

    .line 2515
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2524
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "  "

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;Z)V

    .line 2526
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2519
    const-string v0, "-a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2520
    return-void
.end method
