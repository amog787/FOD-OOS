.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;

    invoke-direct {v0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;-><init>()V

    sput-object v0, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;

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

    check-cast p1, Lcom/android/server/role/RoleManagerService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/String;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/role/RoleManagerService;->lambda$TCTA4I2bhEypguZihxs4ezif6t0(Lcom/android/server/role/RoleManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
