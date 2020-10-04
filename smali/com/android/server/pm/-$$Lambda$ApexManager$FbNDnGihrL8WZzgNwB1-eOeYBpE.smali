.class public final synthetic Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/server/pm/ApexManager;->lambda$getInactivePackages$2(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method
