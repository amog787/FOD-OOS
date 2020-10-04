.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    invoke-direct {v0}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;-><init>()V

    sput-object v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/policy/PermissionPolicyService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService;->lambda$RYery4oeHNcS8uZ6BgM2MtZIvKw(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    return-void
.end method
