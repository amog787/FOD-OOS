.class Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;
.super Landroid/database/ContentObserver;
.source "RecentTasksInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentTasksInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockedTasksContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentTasksInjector;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentTasksInjector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    .line 148
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;->this$0:Lcom/android/server/wm/RecentTasksInjector;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasksInjector;->access$300(Lcom/android/server/wm/RecentTasksInjector;)V

    .line 153
    return-void
.end method
