.class public Lcom/android/server/ActivityTriggerService;
.super Lcom/android/server/SystemService;
.source "ActivityTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ActivityTriggerService$LocalRunnable;,
        Lcom/android/server/ActivityTriggerService$EventHandlerThread;
    }
.end annotation


# static fields
.field public static final PROC_ADDED_NOTIFICATION:I = 0x1

.field public static final PROC_REMOVED_NOTIFICATION:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private eventHandler:Lcom/android/server/ActivityTriggerService$EventHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ActivityTriggerService"

    sput-object v0, Lcom/android/server/ActivityTriggerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/ActivityTriggerService$EventHandlerThread;

    const-string v1, "EventHandlerThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/ActivityTriggerService$EventHandlerThread;-><init>(Lcom/android/server/ActivityTriggerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ActivityTriggerService;->eventHandler:Lcom/android/server/ActivityTriggerService$EventHandlerThread;

    .line 48
    return-void
.end method

.method static native notifyAction_native(Ljava/lang/String;JLjava/lang/String;II)V
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 52
    sget-object v0, Lcom/android/server/ActivityTriggerService;->TAG:Ljava/lang/String;

    const-string v1, "Starting ActivityTriggerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/ActivityTriggerService;->eventHandler:Lcom/android/server/ActivityTriggerService$EventHandlerThread;

    invoke-virtual {v0}, Lcom/android/server/ActivityTriggerService$EventHandlerThread;->start()V

    .line 54
    const-class v0, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/ActivityTriggerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public updateRecord(Lcom/android/server/am/HostingRecord;Landroid/content/pm/ApplicationInfo;II)V
    .locals 9
    .param p1, "hr"    # Lcom/android/server/am/HostingRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pid"    # I
    .param p4, "event"    # I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/ActivityTriggerService;->eventHandler:Lcom/android/server/ActivityTriggerService$EventHandlerThread;

    invoke-virtual {v0}, Lcom/android/server/ActivityTriggerService$EventHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/ActivityTriggerService$LocalRunnable;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v1, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ActivityTriggerService$LocalRunnable;-><init>(Ljava/lang/String;JLjava/lang/String;II)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    return-void
.end method
