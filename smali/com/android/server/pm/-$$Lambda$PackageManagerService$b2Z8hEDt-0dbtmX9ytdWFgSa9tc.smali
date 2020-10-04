.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$b2Z8hEDt-0dbtmX9ytdWFgSa9tc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$b2Z8hEDt-0dbtmX9ytdWFgSa9tc;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$b2Z8hEDt-0dbtmX9ytdWFgSa9tc;->f$0:Lcom/android/server/pm/PackageManagerService;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$b2Z8hEDt-0dbtmX9ytdWFgSa9tc(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
