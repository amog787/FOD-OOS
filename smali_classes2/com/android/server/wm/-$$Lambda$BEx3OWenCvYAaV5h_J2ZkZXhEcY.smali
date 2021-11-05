.class public final synthetic Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/wm/WindowProcessListener;->updateProcessInfo(ZZZ)V

    return-void
.end method
