.class public abstract Lcom/android/server/media/MediaKeyDispatcher;
.super Ljava/lang/Object;
.source "MediaKeyDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaKeyDispatcher$KeyEventType;
    }
.end annotation


# static fields
.field static final KEY_EVENT_DOUBLE_TAP:I = 0x2

.field static final KEY_EVENT_LONG_PRESS:I = 0x8

.field static final KEY_EVENT_SINGLE_TAP:I = 0x1

.field static final KEY_EVENT_TRIPLE_TAP:I = 0x4


# instance fields
.field private mOverriddenKeyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    .line 66
    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    const/16 v1, 0xa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method static isDoubleTapOverridden(I)Z
    .locals 1
    .param p0, "overriddenKeyEvents"    # I

    .line 147
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isLongPressOverridden(I)Z
    .locals 1
    .param p0, "overriddenKeyEvents"    # I

    .line 155
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isSingleTapOverridden(I)Z
    .locals 1
    .param p0, "overriddenKeyEvents"    # I

    .line 143
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isTripleTapOverridden(I)Z
    .locals 1
    .param p0, "overriddenKeyEvents"    # I

    .line 151
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getMediaButtonReceiver(Landroid/view/KeyEvent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "uid"    # I
    .param p3, "asSystemService"    # Z

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method getMediaSession(Landroid/view/KeyEvent;IZ)Landroid/media/session/MediaSession$Token;
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "uid"    # I
    .param p3, "asSystemService"    # Z

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method getOverriddenKeyEvents()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    return-object v0
.end method

.method onDoubleTap(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 216
    return-void
.end method

.method onLongPress(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 256
    return-void
.end method

.method onSingleTap(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 199
    return-void
.end method

.method onTripleTap(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 233
    return-void
.end method

.method setOverriddenKeyEvents(II)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "keyEventType"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method
