.class public final synthetic Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/TransactionFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method
