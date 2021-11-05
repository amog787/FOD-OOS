.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStartController$6bTAPCVeDq_D4Y53Y5WNfMK4xBE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/ActivityStartController;->lambda$startActivities$0(I)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
