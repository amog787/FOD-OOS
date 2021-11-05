.class public final synthetic Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ImeInsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;->f$0:Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;->f$0:Lcom/android/server/wm/ImeInsetsSourceProvider;

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider()V

    return-void
.end method
