.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;

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

    check-cast p1, Lcom/android/server/autofill/Session;

    check-cast p2, Landroid/content/IntentSender;

    check-cast p3, Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/Session;->lambda$Fs9zdJwELk-9rAM3RiY6AyBKswI(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
