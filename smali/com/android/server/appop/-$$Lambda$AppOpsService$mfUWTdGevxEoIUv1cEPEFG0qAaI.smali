.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;->f$0:Lcom/android/server/appop/AppOpsService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;->f$0:Lcom/android/server/appop/AppOpsService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->lambda$mfUWTdGevxEoIUv1cEPEFG0qAaI(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
