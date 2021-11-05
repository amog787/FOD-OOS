.class Lcom/android/server/wm/AlertWindowNotification;
.super Ljava/lang/Object;
.source "AlertWindowNotification.java"


# static fields
.field private static final CHANNEL_PREFIX:Ljava/lang/String; = "com.android.server.wm.AlertWindowNotification - "

.field private static final NOTIFICATION_ID:I

.field private static sChannelGroup:Landroid/app/NotificationChannelGroup;

.field private static sNextRequestCode:I


# instance fields
.field private mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPosted:Z

.field private final mRequestCode:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 62
    iput-object p2, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 64
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.wm.AlertWindowNotification - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 66
    sget v0, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    iput v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    .line 67
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 68
    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appName"    # Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Landroid/app/NotificationChannelGroup;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040105

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.wm.AlertWindowNotification - "

    invoke-direct {v0, v2, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 156
    :cond_0
    const v0, 0x1040106

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 157
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "nameChannel":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 160
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_1

    .line 161
    return-void

    .line 163
    :cond_1
    new-instance v4, Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v2, v4

    .line 164
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 166
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 167
    sget-object v3, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create notification channel appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlertWindowNotification"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 141
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.MANAGE_APP_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    const/high16 v2, 0x14000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$iVtcJMb6VtqtAgEtGUDCkGay0tM(Lcom/android/server/wm/AlertWindowNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/AlertWindowNotification;->onPostNotification()V

    return-void
.end method

.method private onCancelNotification(Z)V
    .locals 3
    .param p1, "deleteChannel"    # Z

    .line 85
    iget-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 90
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method private onPostNotification()V
    .locals 11

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 105
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 106
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/AlertWindowNotification;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 107
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 110
    .local v4, "appName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/AlertWindowNotification;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    const v5, 0x1040107

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "message":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v6, "extras":Landroid/os/Bundle;
    new-array v8, v0, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    aput-object v9, v8, v7

    const-string v9, "android.foregroundApps"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x1040108

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v4, v10, v7

    .line 119
    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 120
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x10800d9

    .line 121
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x106001c

    .line 122
    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 123
    invoke-virtual {v9, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 124
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 126
    invoke-direct {p0, v1, v8}, Lcom/android/server/wm/AlertWindowNotification;->getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 130
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 131
    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 132
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 136
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v8, v9, v7, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 137
    return-void
.end method


# virtual methods
.method cancel(Z)V
    .locals 2
    .param p1, "deleteChannel"    # Z

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;-><init>(Lcom/android/server/wm/AlertWindowNotification;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public synthetic lambda$cancel$0$AlertWindowNotification(Z)V
    .locals 0
    .param p1, "deleteChannel"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/wm/AlertWindowNotification;->onCancelNotification(Z)V

    return-void
.end method

.method post()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$iVtcJMb6VtqtAgEtGUDCkGay0tM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$iVtcJMb6VtqtAgEtGUDCkGay0tM;-><init>(Lcom/android/server/wm/AlertWindowNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
