.class public final synthetic Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

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

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityManagerInternal;->broadcastGlobalConfigurationChanged(IZ)V

    return-void
.end method
