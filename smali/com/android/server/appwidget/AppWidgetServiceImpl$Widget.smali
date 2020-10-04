.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Widget"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field maskedViews:Landroid/widget/RemoteViews;

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field restoredId:I

.field updateSequenceNos:Landroid/util/SparseLongArray;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4255
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4246
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4246
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 4246
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    move-result v0

    return v0
.end method

.method private clearMaskedViewsLocked()Z
    .locals 1

    .line 4268
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 4269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4270
    const/4 v0, 0x1

    return v0

    .line 4272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .line 4263
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4264
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .locals 1

    .line 4277
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
