.class public final synthetic Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-wide p2, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$1:J

    iput-object p4, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-wide v1, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$1:J

    iget-object v3, p0, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;->f$2:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lambda$registerForBroadcastsLocked$1$AppWidgetServiceImpl(JLandroid/app/PendingIntent;)V

    return-void
.end method
