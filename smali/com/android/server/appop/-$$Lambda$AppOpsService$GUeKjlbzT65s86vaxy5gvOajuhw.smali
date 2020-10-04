.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    invoke-direct {v0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;-><init>()V

    sput-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

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

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->lambda$GUeKjlbzT65s86vaxy5gvOajuhw(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method
