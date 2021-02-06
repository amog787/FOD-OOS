.class public final synthetic Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Lcom/android/server/wm/ActivityRecord$Token;

    check-cast p6, Landroid/content/ComponentName;

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityManagerInternal;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method
