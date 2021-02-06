.class public final synthetic Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1, p2}, Lcom/android/server/pm/OtaDexoptService;->lambda$prepare$1(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I

    move-result p1

    return p1
.end method
