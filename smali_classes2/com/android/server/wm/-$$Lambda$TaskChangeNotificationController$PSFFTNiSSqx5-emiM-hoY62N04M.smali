.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$PSFFTNiSSqx5-emiM-hoY62N04M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$24(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method
