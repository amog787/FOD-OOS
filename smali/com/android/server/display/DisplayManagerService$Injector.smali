.class Lcom/android/server/display/DisplayManagerService$Injector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDefaultDisplayDelayTimeout()J
    .locals 2

    .line 2171
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;
    .locals 1
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "displayAdapterListener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 2167
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    return-object v0
.end method
