.class final Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowsForAccessibilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2948
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .param p1, "x1"    # Landroid/view/WindowInfo;

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 5
    .param p1, "windowType"    # I

    .line 3003
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/16 v4, 0x3ed

    if-eq p1, v4, :cond_3

    const/16 v4, 0x7de

    if-eq p1, v4, :cond_2

    const/16 v4, 0x7e1

    if-eq p1, v4, :cond_2

    const/16 v4, 0x7e8

    if-eq p1, v4, :cond_2

    const/16 v4, 0x7f0

    if-eq p1, v4, :cond_1

    const/16 v3, 0x7f2

    if-eq p1, v3, :cond_0

    const/16 v3, 0x7f4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7f6

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7e3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7e4

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 3050
    const/4 v0, -0x1

    return v0

    .line 3021
    :pswitch_0
    return v1

    .line 3042
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 3046
    :cond_1
    return v3

    .line 3038
    :cond_2
    :pswitch_1
    return v2

    .line 3016
    :cond_3
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 7
    .param p1, "window"    # Landroid/view/WindowInfo;

    .line 2967
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    .line 2968
    .local v0, "windowId":I
    if-gez v0, :cond_0

    .line 2969
    const/4 v1, 0x0

    return-object v1

    .line 2972
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2974
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 2975
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 2976
    iget v2, p1, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 2977
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 2978
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2979
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2980
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 2981
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 2983
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    .line 2984
    .local v2, "parentId":I
    if-ltz v2, :cond_1

    .line 2985
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 2988
    :cond_1
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 2989
    iget-object v3, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2990
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2991
    iget-object v5, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2992
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v6

    .line 2993
    .local v6, "childId":I
    if-ltz v6, :cond_2

    .line 2994
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 2990
    .end local v5    # "childToken":Landroid/os/IBinder;
    .end local v6    # "childId":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2999
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onWindowsForAccessibilityChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 2953
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 2962
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2963
    monitor-exit v0

    .line 2964
    return-void

    .line 2963
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
