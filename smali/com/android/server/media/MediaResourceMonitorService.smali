.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SERVICE_NAME:Ljava/lang/String; = "media_resource_monitor"

.field private static final TAG:Ljava/lang/String; = "MediaResourceMonitor"


# instance fields
.field private final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "MediaResourceMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    .line 45
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    const-string/jumbo v1, "media_resource_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaResourceMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 50
    return-void
.end method
