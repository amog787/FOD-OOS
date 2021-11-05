.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/Session;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/IntentSender;

    check-cast p4, Landroid/content/Intent;

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/autofill/Session;->lambda$LYgiVF7QUn4954p-wNYTeWDnGkw(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method
