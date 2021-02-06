.class final Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpNotificationVibrationControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_VIBRATE_INTENSITY:Landroid/net/Uri;

.field private final VIBRATE_INTENSITY:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;


# direct methods
.method public constructor <init>(Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    const-string p1, "notice_vibrate_intensity"

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->VIBRATE_INTENSITY:Ljava/lang/String;

    .line 36
    nop

    .line 37
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->NOTIFICATION_VIBRATE_INTENSITY:Landroid/net/Uri;

    .line 41
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->access$000(Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->NOTIFICATION_VIBRATE_INTENSITY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 48
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 51
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 52
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 55
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->access$000(Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->NOTIFICATION_VIBRATE_INTENSITY:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    const/4 v2, -0x2

    const-string v3, "notice_vibrate_intensity"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->access$102(Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;I)I

    .line 59
    invoke-static {}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->access$200()[J

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    invoke-static {v3}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->access$100(Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;)I

    move-result v3

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 61
    :cond_1
    return-void
.end method
