.class public final synthetic Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;->f$1:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lambda$cancelBroadcastsLocked$0$AppWidgetServiceImpl(Landroid/app/PendingIntent;)V

    return-void
.end method
