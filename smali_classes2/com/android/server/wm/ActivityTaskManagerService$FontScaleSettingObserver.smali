.class final Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;
.super Landroid/database/ContentObserver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FontScaleSettingObserver"
.end annotation


# instance fields
.field private final mFontScaleUri:Landroid/net/Uri;

.field private final mHideErrorDialogsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 730
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 731
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 727
    const-string v0, "font_scale"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    .line 728
    const-string v0, "hide_error_dialogs"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    .line 732
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 733
    .local p1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 736
    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 741
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 742
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mFontScaleUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    goto :goto_1

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->mHideErrorDialogsUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 746
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V

    .line 747
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 749
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    goto :goto_0

    .line 750
    :cond_2
    return-void
.end method
