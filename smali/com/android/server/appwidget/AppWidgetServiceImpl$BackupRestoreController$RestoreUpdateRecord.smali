.class Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreUpdateRecord"
.end annotation


# instance fields
.field public newId:I

.field public notified:Z

.field public oldId:I

.field final synthetic this$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V
    .locals 0
    .param p2, "theOldId"    # I
    .param p3, "theNewId"    # I

    .line 4983
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->this$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4984
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    .line 4985
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    .line 4986
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4987
    return-void
.end method
