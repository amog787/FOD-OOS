.class public final synthetic Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/ActivityManagerInternal;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    return-void
.end method
