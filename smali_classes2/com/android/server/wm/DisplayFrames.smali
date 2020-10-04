.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# instance fields
.field public final mContent:Landroid/graphics/Rect;

.field public final mCurrent:Landroid/graphics/Rect;

.field public mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field private final mDisplayInfoOverscan:Landroid/graphics/Rect;

.field public mDisplayWidth:I

.field public final mDock:Landroid/graphics/Rect;

.field public final mOverscan:Landroid/graphics/Rect;

.field public final mRestricted:Landroid/graphics/Rect;

.field public final mRestrictedOverscan:Landroid/graphics/Rect;

.field private final mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStable:Landroid/graphics/Rect;

.field public final mStableFullscreen:Landroid/graphics/Rect;

.field public final mSystem:Landroid/graphics/Rect;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public final mVoiceContent:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;
    .param p3, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 102
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 105
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    .line 120
    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 122
    return-void
.end method

.method private dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p4}, Ljava/io/PrintWriter;->println()V

    .line 224
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayFrames w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-string v2, "mStable"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 207
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    const-string v2, "mStableFullscreen"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    const-string v2, "mDock"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    const-string v2, "mCurrent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    const-string v2, "mSystem"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    const-string v2, "mContent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    const-string v2, "mVoiceContent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    const-string v2, "mOverscan"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    const-string v2, "mRestrictedOverscan"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    const-string v2, "mRestricted"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    const-string v2, "mUnrestricted"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    const-string v2, "mDisplayInfoOverscan"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    const-string v2, "mRotatedDisplayInfoOverscan"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBeginLayout()V
    .locals 4

    .line 134
    iget v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 152
    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 146
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    nop

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 177
    .local v0, "c":Landroid/view/DisplayCutout;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-lez v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 180
    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 183
    :cond_4
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-lez v1, :cond_5

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 186
    :cond_5
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    if-lez v1, :cond_6

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 190
    .end local v0    # "c":Landroid/view/DisplayCutout;
    :cond_6
    return-void
.end method

.method public onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 5
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 125
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 126
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 127
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanTop:I

    iget v3, p1, Landroid/view/DisplayInfo;->overscanRight:I

    iget v4, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 131
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 197
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 198
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 200
    return-void
.end method
