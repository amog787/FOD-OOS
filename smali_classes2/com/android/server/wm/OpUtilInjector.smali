.class public Lcom/android/server/wm/OpUtilInjector;
.super Ljava/lang/Object;
.source "OpUtilInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static sOpUtil:Lcom/android/server/wm/IOpUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xbb

    aput v2, v0, v1

    .line 36
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUidtoTouchWindowUids(IILjava/lang/String;III)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "type"    # I

    .line 120
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 124
    sget-object v1, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/IOpUtil;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    .line 125
    return-void
.end method

.method public static dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 141
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 142
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public static dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 147
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dynamicallyConfigPMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 151
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 152
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigPMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public static dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 156
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 157
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 39
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_oputil:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpUtil;

    sput-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    .line 42
    :cond_0
    return-void
.end method

.method public static mayAddFloatingWindow(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "owningPackage":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 70
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_5

    .line 84
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/OpUtilInjector;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    goto/16 :goto_0

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-nez v1, :cond_7

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 93
    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/OpUtilInjector;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    goto :goto_0

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v1, :cond_7

    .line 101
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 101
    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/OpUtilInjector;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    .line 106
    :cond_7
    :goto_0
    return-void

    .line 71
    :cond_8
    :goto_1
    return-void

    .line 66
    .end local v0    # "owningPackage":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void

    .line 63
    :cond_a
    :goto_3
    return-void
.end method

.method public static onFindFocusedWindow()V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 135
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0}, Lcom/android/server/wm/IOpUtil;->onFindFocusedWindow()V

    .line 136
    return-void
.end method

.method public static setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 58
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpUtil;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 59
    return-void
.end method
