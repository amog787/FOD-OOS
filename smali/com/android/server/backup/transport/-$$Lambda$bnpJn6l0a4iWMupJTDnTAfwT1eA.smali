.class public final synthetic Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;

    invoke-direct {v0}, Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;-><init>()V

    sput-object v0, Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;->INSTANCE:Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/backup/transport/TransportStats$Stats;

    check-cast p2, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-static {p1, p2}, Lcom/android/server/backup/transport/TransportStats$Stats;->merge(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$Stats;)Lcom/android/server/backup/transport/TransportStats$Stats;

    move-result-object p1

    return-object p1
.end method
