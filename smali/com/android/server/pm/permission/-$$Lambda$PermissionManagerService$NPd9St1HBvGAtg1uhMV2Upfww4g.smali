.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    invoke-direct {v0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

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

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V

    return-void
.end method
