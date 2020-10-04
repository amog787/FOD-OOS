.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3716
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3717
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3718
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .line 3722
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3757
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3758
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3759
    .local v1, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3760
    .local v9, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 3761
    .local v10, "requestId":J
    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3762
    .local v12, "appWidgetId":I
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3763
    .local v13, "viewId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3765
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v12

    move v6, v13

    move-wide v7, v10

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    goto/16 :goto_0

    .line 3748
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10    # "requestId":J
    .end local v12    # "appWidgetId":I
    .end local v13    # "viewId":I
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3749
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3750
    .restart local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3751
    .local v2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3753
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    .line 3754
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    goto :goto_0

    .line 3736
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3737
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3738
    .restart local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3739
    .restart local v9    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3740
    .local v10, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 3741
    .local v11, "requestId":J
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3742
    .local v13, "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3744
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v13

    move-object v6, v10

    move-wide v7, v11

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    .line 3745
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11    # "requestId":J
    .end local v13    # "appWidgetId":I
    goto :goto_0

    .line 3724
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3725
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3726
    .restart local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3727
    .restart local v9    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/widget/RemoteViews;

    .line 3728
    .local v10, "views":Landroid/widget/RemoteViews;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 3729
    .restart local v11    # "requestId":J
    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3730
    .restart local v13    # "appWidgetId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3732
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v3, v1

    move-object v4, v9

    move v5, v13

    move-object v6, v10

    move-wide v7, v11

    invoke-static/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    .line 3733
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v10    # "views":Landroid/widget/RemoteViews;
    .end local v11    # "requestId":J
    .end local v13    # "appWidgetId":I
    nop

    .line 3769
    :goto_0
    return-void
.end method
