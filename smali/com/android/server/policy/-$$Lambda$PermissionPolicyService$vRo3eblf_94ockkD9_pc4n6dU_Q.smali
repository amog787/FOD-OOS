.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;

    invoke-direct {v0}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;-><init>()V

    sput-object v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$vRo3eblf_94ockkD9_pc4n6dU_Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/policy/PermissionPolicyService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->lambda$vRo3eblf_94ockkD9_pc4n6dU_Q(Lcom/android/server/policy/PermissionPolicyService;I)V

    return-void
.end method
