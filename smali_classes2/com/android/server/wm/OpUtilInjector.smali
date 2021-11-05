.class public Lcom/android/server/wm/OpUtilInjector;
.super Ljava/lang/Object;
.source "OpUtilInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static sOpUtil:Lcom/android/server/wm/IOpUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9c

    aput v2, v0, v1

    .line 38
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
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

    .line 104
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 108
    sget-object v1, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/wm/IOpUtil;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    .line 109
    return-void
.end method

.method public static dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 125
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 126
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public static dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 131
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

    .line 135
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 136
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigPMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public static dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 140
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 141
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpUtil;->dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_oputil:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpUtil;

    sput-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    .line 44
    :cond_0
    return-void
.end method

.method public static mayAddFloatingWindow(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "owningPackage":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 74
    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 78
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

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_5

    .line 83
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v3

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/OpUtilInjector;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    goto :goto_0

    .line 85
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v3

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 86
    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/OpUtilInjector;->addUidtoTouchWindowUids(IILjava/lang/String;III)V

    .line 90
    :cond_6
    :goto_0
    return-void

    .line 75
    :cond_7
    :goto_1
    return-void

    .line 69
    .end local v0    # "owningPackage":Ljava/lang/String;
    :cond_8
    :goto_2
    return-void

    .line 65
    :cond_9
    :goto_3
    return-void
.end method

.method public static onFindFocusedWindow()V
    .locals 1

    .line 115
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 119
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0}, Lcom/android/server/wm/IOpUtil;->onFindFocusedWindow()V

    .line 120
    return-void
.end method

.method public static onFling(I)V
    .locals 1
    .param p0, "duration"    # I

    .line 146
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 150
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpUtil;->onFling(I)V

    .line 151
    return-void
.end method

.method public static onTouch(Z)V
    .locals 1
    .param p0, "touching"    # Z

    .line 154
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 158
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpUtil;->onTouch(Z)V

    .line 159
    return-void
.end method

.method public static setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 55
    sget-boolean v0, Lcom/android/server/wm/OpUtilInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->initInstance()V

    .line 59
    sget-object v0, Lcom/android/server/wm/OpUtilInjector;->sOpUtil:Lcom/android/server/wm/IOpUtil;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpUtil;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 61
    return-void
.end method
