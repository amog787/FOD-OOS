.class public final synthetic Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

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

    check-cast p1, Lcom/android/server/am/BaseErrorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
