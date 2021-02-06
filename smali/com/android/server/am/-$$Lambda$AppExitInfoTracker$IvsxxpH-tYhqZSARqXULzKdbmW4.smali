.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$handleLogAnrTrace$11(Ljava/io/File;)V

    return-void
.end method
