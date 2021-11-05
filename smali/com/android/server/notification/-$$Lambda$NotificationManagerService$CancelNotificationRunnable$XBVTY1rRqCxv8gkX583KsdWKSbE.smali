.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->lambda$doNotificationCancelLocked$0(I)Z

    move-result p1

    return p1
.end method
