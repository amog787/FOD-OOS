.class final Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;
.super Landroid/os/Binder;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/server/emergency/EmergencyAffordanceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p2, "x1"    # Lcom/android/server/emergency/EmergencyAffordanceService$1;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$700(Lcom/android/server/emergency/EmergencyAffordanceService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "EmergencyAffordanceService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$800(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 346
    return-void
.end method
